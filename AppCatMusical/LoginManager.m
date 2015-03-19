//
//  LoginManager.m
//  AppCatMusical
//
//  Created by catherine TIDONA on 19/03/2015.
//  Copyright (c) 2015 RCDSM-Boyer-Celine. All rights reserved.
//

#import "LoginManager.h"
#import "AFNetworking/AFNetworking.h"

@interface LoginManager ()
@property (strong) AFHTTPRequestOperationManager* manager;

@end


@implementation LoginManager
- (instancetype)init {
    self = [super init];
    if (self != nil) {
        self.manager = [AFHTTPRequestOperationManager manager];
    }
    return self;
}

- (void) connectWithLogin:(NSString*)login password:(NSString*)password {
    NSDictionary* params = @{@"username":login,
                             @"password":password};
    
    [self.manager POST:@"http://?/?/?/?"
            parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
                NSArray* rootObject = responseObject;
                if (rootObject.count > 0) {
                    [self.delegate didConnect:YES];
                } else {
                    [self.delegate didConnect:NO];
                }
            } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                [self.delegate didConnect:NO];
            }];
    
}


@end