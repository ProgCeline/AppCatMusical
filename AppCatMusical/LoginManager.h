//
//  LoginManager.h
//  AppCatMusical
//
//  Created by catherine TIDONA on 19/03/2015.
//  Copyright (c) 2015 RCDSM-Boyer-Celine. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LoginManagerDelegate <NSObject>
-(void) didConnect: (BOOL) success;
@end

@interface LoginManager : NSObject

@property (weak) id <LoginManagerDelegate> delegate;

- (void) connectWithLogin:(NSString*)login password:(NSString*)password;

@end
