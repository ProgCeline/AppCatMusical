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

- (void)viewWillAppear:(BOOL)animated {
    //faire apparaitre les données
    //self.pochette.image = [[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:album.pochette]]];
    //self.nom.text = self.album.nom;
    //self.artiste.text = self.album.artiste;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0; //self.catalogue.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Album" forIndexPath:indexPath];
//    
//    Album* album = [self.catalogue objectAtIndex:indexPath.row];
//    
//    cell.textLabel.text = album.nom;
//   
//    
//    return cell;
return nil;
}



@end
