//
//  XmlParserDelegate.m
//  AppCatMusical
//
//  Created by RCDSM-Boyer-Celine on 19/03/2015.
//  Copyright (c) 2015 RCDSM-Boyer-Celine. All rights reserved.
//

#import "XmlParserDelegate.h"

@implementation XmlParserDelegate

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    // Nous allons a chaque fois recuperer le precedant objet correspondant
    if ([self.currentlyReading. lastObject isEqualToString:@"pochette"])
    {
        self.temporaryAlbum.pochette = string;
    }
    else if([self.currentlyReading.lastObject isEqualToString:@"nom"])
    {
        self.temporaryAlbum.nom = string;
    }
    else if ([self.currentlyReading.lastObject isEqualToString:@"artiste"])
    {
        self.temporaryAlbum.artiste = string;
    }
    else if ([self.currentlyReading.lastObject isEqualToString:@"piste"])
    {
        [self.temporaryPistes addObject:string];
    }
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict {
    
    if ([elementName isEqualToString:@"catalogue"])
    {   // on commence à lire le catalogue...
        // on initialise nos variables
        self.currentlyReading = [NSMutableArray array];
        self.catalogue = [NSMutableArray array];
    }
    else if ([elementName isEqualToString:@"album"])
    {   // on commence à lire album, donc on crée un album temporaire
        self.temporaryAlbum = [[Album alloc] init];
    }
    else if ([elementName isEqualToString:@"pistes"])
    {   // on commence à lire les pistes, donc on crée une liste de piste temporaire
        self.temporaryPistes = [NSMutableArray array];
    }
    
    // se souvenir du contexte de lecture
    [self.currentlyReading addObject:elementName];
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
    
    if ([elementName isEqualToString:@"album"])
    {   // quand on a fini de lire "album", on ajoute l'album construit au catalogue.
        [self.catalogue addObject:self.temporaryAlbum];
    }
    else if ([elementName isEqualToString:@"pistes"])
    {   // quand on a fini de lire "pistes", on ajoute la liste des pistes à l'album temporaire
        self.temporaryAlbum.pistes = [NSArray arrayWithArray:self.temporaryPistes];
    }
    
    // fermer le contexte de lecture...
    [self.currentlyReading removeLastObject];
}

@end
