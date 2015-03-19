//
//  XmlParserDelegate.h
//  AppCatMusical
//
//  Created by RCDSM-Boyer-Celine on 19/03/2015.
//  Copyright (c) 2015 RCDSM-Boyer-Celine. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XmlParserDelegate : NSObject <NSXMLParserDelegate> {
    NSString *className;
    NSMutableArray *items;
    NSObject *item; // stands for any class
    NSString *currentNodeName;
    NSMutableString *currentNodeContent;
}
- (NSArray *)items;
- (id)parseXMLAtURL:(NSURL *)url
           toObject:(NSString *)aClassName
         parseError:(NSError **)error;
@end