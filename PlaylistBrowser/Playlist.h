//
//  Playlist.h
//  PlaylistBrowser
//
//  Created by James Rochabrun on 25-05-16.
//  Copyright © 2016 James Rochabrun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Playlist : NSObject
@property NSString *playListTitle;
@property NSString *playlistDescription;
@property UIImage *playListIcon;
@property UIImage *playListIconLarge;
@property NSArray *playListArtists;
@property UIColor *backgroundColor;

- (instancetype)initWithIndex:(NSUInteger)index;

@end
