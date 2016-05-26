//
//  MusicLibrary.h
//  PlaylistBrowser
//
//  Created by James Rochabrun on 25-05-16.
//  Copyright © 2016 James Rochabrun. All rights reserved.
//

#import <Foundation/Foundation.h>


extern NSString *const Ktitle;
extern NSString *const KDescription;
extern NSString *const KIcon;
extern NSString *const KLargeIcon ;
extern NSString *const kBackgroundColor;
extern NSString *const kArtists;

@interface MusicLibrary : NSObject
@property NSArray *library;

@end
