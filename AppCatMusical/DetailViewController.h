//
//  DetailViewController.h
//  AppCatMusical
//
//  Created by RCDSM-Boyer-Celine on 19/03/2015.
//  Copyright (c) 2015 RCDSM-Boyer-Celine. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Album.h"

@interface DetailViewController : UIViewController
@property (strong) Album* album;
@property (weak, nonatomic) IBOutlet UIImageView *pochette;
@property (weak, nonatomic) IBOutlet UITextField *nom;
@property (weak, nonatomic) IBOutlet UITextField *artiste;
@property (weak, nonatomic) IBOutlet UITableView *pisteTableView;


@end
