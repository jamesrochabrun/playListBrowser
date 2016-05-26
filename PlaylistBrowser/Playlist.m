//
//  Playlist.m
//  PlaylistBrowser
//
//  Created by James Rochabrun on 25-05-16.
//  Copyright © 2016 James Rochabrun. All rights reserved.
//

#import "Playlist.h"
#import "MusicLibrary.h"

@implementation Playlist

- (instancetype)initWithIndex:(NSUInteger)index {
    self  = [super init];
    if (self) {
        //creating the instance object
        MusicLibrary *musicLibrary = [[MusicLibrary alloc] init];
        //pulling the array property (fulled with dictionaries) in to a variable
        NSArray *library = musicLibrary.library;
        //creating a variable dictionary based on the index of the array that contains dictionaries
        NSDictionary *playListDictionary = library[index];
        //using the keys of the dictionary to populate the properties of the Playlist
        _playListTitle = [playListDictionary objectForKey:Ktitle];
        _playlistDescription = [playListDictionary objectForKey:KDescription];
        NSString *iconName = [playListDictionary objectForKey:KIcon];
        _playListIcon = [UIImage imageNamed:iconName];
        NSString *largeIconName = [playListDictionary objectForKey:KLargeIcon];
        _playListIconLarge = [UIImage imageNamed:largeIconName];
        _playListArtists =  [NSArray arrayWithArray:[playListDictionary objectForKey:kArtists]];
       
        NSDictionary *colorDictionary = [playListDictionary objectForKey:kBackgroundColor];
        _backgroundColor = [self rgbColorFromDictinoary:colorDictionary];
    }
    return self;
}


//helper method

- (UIColor *)rgbColorFromDictinoary:(NSDictionary*)colorDictionary {
    
    CGFloat red = [[colorDictionary objectForKey:@"red"] doubleValue];
    CGFloat green = [[colorDictionary objectForKey:@"green"] doubleValue];
    CGFloat blue = [[colorDictionary objectForKey:@"blue"] doubleValue];
    CGFloat alpha = [[colorDictionary objectForKey:@"alpha"] doubleValue];
    
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];

}

@end
