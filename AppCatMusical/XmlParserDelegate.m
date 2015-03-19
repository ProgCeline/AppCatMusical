//
//  XmlParserDelegate.m
//  AppCatMusical
//
//  Created by RCDSM-Boyer-Celine on 19/03/2015.
//  Copyright (c) 2015 RCDSM-Boyer-Celine. All rights reserved.
//

#import "XmlParserDelegate.h"

@implementation XmlParserDelegate
- (NSArray *)items
{
    return items;
}

- (id)parseXMLAtURL:(NSURL *)url
           toObject:(NSString *)aClassName
         parseError:(NSError **)error
{
    items = [[NSMutableArray alloc] init];
    className = aClassName;
    NSXMLParser *parser = [[NSXMLParser alloc] initWithContentsOfURL:url];
    [parser setDelegate:self];
    [parser parse];
    
    if([parser parserError] && error) {
        *error = [parser parserError];
    }
    return self;
}

- (void)parser:(NSXMLParser *)parser
didStartElement:(NSString *)elementName
  namespaceURI:(NSString *)namespaceURI
 qualifiedName:(NSString *)qName
    attributes:(NSDictionary *)attributeDict
{
    NSLog(@"Open tag: %@", elementName);
    if([elementName isEqualToString:className]) {
        // create an instance of a class on run-time
        item = [[NSClassFromString(className) alloc] init];
    }
    else {
        currentNodeName = [elementName copy];
        currentNodeContent = [[NSMutableString alloc] init];
    }
}

- (void)parser:(NSXMLParser *)parser
 didEndElement:(NSString *)elementName
  namespaceURI:(NSString *)namespaceURI
 qualifiedName:(NSString *)qName
{
    NSLog(@"Close tag: %@", elementName);
    if([elementName isEqualToString:className]) {
        [items addObject:item];
        item = nil;
    }
    else if([elementName isEqualToString:currentNodeName]) {
        // use key-value coding
        [item setValue:currentNodeContent forKey:elementName];
        
        currentNodeContent = nil;
        currentNodeName = nil;
    }
}

- (void)parser:(NSXMLParser *)parser
foundCharacters:(NSString *)string
{   
    [currentNodeContent appendString:string];
}

@end
