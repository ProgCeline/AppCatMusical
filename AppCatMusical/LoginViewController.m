//
//  LoginViewController.m
//  AppCatMusical
//
//  Created by RCDSM-Boyer-Celine on 18/03/2015.
//  Copyright (c) 2015 RCDSM-Boyer-Celine. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self.user.text isEqualToString:@""] && [self.password.text isEqualToString:@""]){
        self.user.text = @"";
        self.password.text = @"";
        return YES;
    } else {
        UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Invalid credentials." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
    }
    
    return NO;
}

@end

