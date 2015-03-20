//
//  Album.h
//  AppCatMusical
//
//  Created by RCDSM-Boyer-Celine on 19/03/2015.
//  Copyright (c) 2015 RCDSM-Boyer-Celine. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Album: NSObject

@property (strong) NSString* pochette;
@property (strong) NSString* nom;
@property (strong) NSString* artiste;
@property (strong) NSArray*  pistes;

- (NSInteger) count;
@end