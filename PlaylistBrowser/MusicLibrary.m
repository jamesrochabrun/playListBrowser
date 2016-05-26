//
//  MusicLibrary.m
//  PlaylistBrowser
//
//  Created by James Rochabrun on 25-05-16.
//  Copyright © 2016 James Rochabrun. All rights reserved.
//

#import "MusicLibrary.h"

@implementation MusicLibrary

NSString *const Ktitle = @"title";
NSString *const KDescription = @"description";
NSString *const KIcon = @"icon";
NSString *const KLargeIcon = @"largeIcon";
NSString *const kBackgroundColor = @"backgroundColor";
NSString *const kArtists = @"artists";



- (instancetype)init {
    self = [super init];
    if (self) {
        
         _library = @[@{Ktitle: @"Rise and Shine",
                       KDescription: @"Get your morning going by singing along to these classic tracks as you hit the shower bright and early!",
                       KIcon: @"ball",
                       KLargeIcon: @"ball",
                       kBackgroundColor: @{@"red": @255.0, @"green": @204.0, @"blue": @51.0, @"alpha": @1.0},
                       kArtists: @[@"American Authors", @"Vacationer", @"Matt and Kim", @"MGMT", @"Echosmith", @"Tokyo Police Club", @"La Femme"]
                       },
                     @{Ktitle: @"Runner's Rampage",
                       KDescription: @"Hit the track hard and get in beast mode with everything from dance tracks to classic hip hop. All the right fuel to motivate you to push your limits.",
                       KIcon: @"2",
                       KLargeIcon: @"2",
                       kBackgroundColor: @{@"red": @255.0, @"green": @102.0, @"blue": @51.0, @"alpha": @1.0},
                       kArtists: @[@"Avicii", @"Calvin Harris", @"Pitbull", @"Iggy Azalea", @"Rita Ora", @"Drake", @"Lil Wayne"]
                       },
                     @{Ktitle: @"Joy Ride",
                       KDescription: @"Let this eclectic playlist take you wherever your heart desires. Cruise along in style to these energetic beats.",
                       KIcon: @"3",
                       KLargeIcon: @"3",
                       kBackgroundColor: @{@"red": @153.0, @"green": @102.0, @"blue": @204.0, @"alpha": @1.0},
                       kArtists: @[@"Afrojack", @"Kid Cudi", @"Daft Punk", @"kIcona Pop", @"Gesaffelstien", @"Roksnoix", @"deadmau5"]
                       },
                     @{Ktitle: @"In The Zone",
                       KDescription: @"Keep calm and focus. Shut out the noise around you and grind away with some mind sharpening instrumental tunes.",
                       KIcon: @"4",
                       KLargeIcon: @"4",
                       kBackgroundColor: @{@"red": @51.0, @"green": @153.0, @"blue": @204.0, @"alpha": @1.0},
                       kArtists: @[@"Dr. Dre", @"Snoop Dogg", @"Com Truise", @"D12", @"Flying Lotus", @"Kanye West", @"Rundfunk"]
                       },
                     @{Ktitle: @"Button Masher",
                       KDescription: @"Turn up the speakers and get out of my way! The ultimate gaming playlist to get you hyped up and ready for the crazy fun that’s about to happen.",
                       KIcon: @"5",
                       KLargeIcon: @"5",
                       kBackgroundColor: @{@"red": @51.0, @"green": @204.0, @"blue": @102.0, @"alpha": @1.0},
                       kArtists: @[@"Skrillex", @"The Game", @"2 Chainz", @"Jay Z", @"T.I.", @"Rihanna", @"Eminem"]
                       },
                     @{Ktitle: @"Futbal Remix",
                       KDescription: @"There’s nothing like the world’s game. Kick around the field with this eclectic playlist from around the world. Futbal for life.",
                       KIcon: @"6",
                       KLargeIcon: @"6",
                       kBackgroundColor: @{@"red": @255.0, @"green": @102.0, @"blue": @153.0, @"alpha": @1.0},
                       kArtists: @[@"Shakira", @"Santana", @"Wyclef Jean", @"Aloe Blacc", @"Pitbull", @"Enrique Iglesias", @"Ricky Martin"]
                       
                       }];
        
        
    }
    return self;
}

@end
