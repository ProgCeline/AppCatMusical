//
//  ViewController.m
//  AppCatMusical
//
//  Created by RCDSM-Boyer-Celine on 18/03/2015.
//  Copyright (c) 2015 RCDSM-Boyer-Celine. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "XmlParserDelegate.h"
#import "Album.h"
#import "AlbumCollectionViewCell.h"
#import "DetailViewController.h"

@interface ViewController()

@property (strong) NSArray* catalogue;
@end

@implementation ViewController {

}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    XmlParserDelegate* parserDelegate = [[XmlParserDelegate alloc] init];
    
    NSXMLParser* parser = [[NSXMLParser alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://perso.imerir.com/cboyer/xmlCatMusical.xml"]];
    parser.delegate = parserDelegate;
    [parser parse];
    
    self.catalogue = [NSArray arrayWithArray:parserDelegate.catalogue];
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.catalogue.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    AlbumCollectionViewCell* cell = [ collectionView dequeueReusableCellWithReuseIdentifier:@"Album" forIndexPath:indexPath];
    Album* album = [self.catalogue objectAtIndex:indexPath.row];
    
    cell.imgCollectionView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:album.pochette]]];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
    NSIndexPath* indexPath = self.collectionView.indexPathsForSelectedItems[0];
    Album* album = [self.catalogue objectAtIndex:indexPath.item];
   
    DetailViewController* vc = segue.destinationViewController;
    vc.album = album;
}

@end
