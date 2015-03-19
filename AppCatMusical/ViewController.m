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

@interface ViewController ()

@end

@implementation ViewController {

}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *url = [NSURL URLWithString: @"http://perso.imerir.com/cboyer/xmlCatMusical.xml"];
    XmlParserDelegate *myParser = [[XmlParserDelegate alloc]
                                   parseXMLAtURL:url toObject:@"Album" parseError:nil];
    
    for(int i = 0; i < [[myParser items] count]; i++) {
        NSLog(@"pochette: %@", [(Album*)[[myParser items] objectAtIndex:i] pochette]);
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
