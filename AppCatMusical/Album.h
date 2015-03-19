//
//  Album.h
//  AppCatMusical
//
//  Created by RCDSM-Boyer-Celine on 19/03/2015.
//  Copyright (c) 2015 RCDSM-Boyer-Celine. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Album : NSObject {
    NSString *pochette;
    NSString *nom;
    NSString *artiste;
    NSString *piste;
}

@property (nonatomic, retain) NSString *pochette;
@property (nonatomic, retain) NSString *nom;
@property (nonatomic, retain) NSString *artiste;
@property (nonatomic, retain) NSString *piste;

@end