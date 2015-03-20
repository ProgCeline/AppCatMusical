//
//  DetailViewController.m
//  AppCatMusical
//
//  Created by RCDSM-Boyer-Celine on 19/03/2015.
//  Copyright (c) 2015 RCDSM-Boyer-Celine. All rights reserved.
//

#import "DetailViewController.h"
#import "Album.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nom.text = self.album.nom;
    self.artiste.text = self.album.artiste;
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {    
    return [self.album count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Album" forIndexPath:indexPath];
    NSString* actuPiste = [self.album.pistes objectAtIndex:indexPath.item];
    cell.textLabel.text = actuPiste;

    return cell;
}



@end
