//
//  XmlParserDelegate.h
//  AppCatMusical
//
//  Created by RCDSM-Boyer-Celine on 19/03/2015.
//  Copyright (c) 2015 RCDSM-Boyer-Celine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Album.h"

@interface XmlParserDelegate : NSObject <NSXMLParserDelegate>

@property (strong) NSMutableArray* currentlyReading;

@property (strong) NSMutableArray* catalogue;
@property (strong) Album* temporaryAlbum;
@property (strong) NSMutableArray* temporaryPistes;

@end