//
//  DetailViewController.h
//  PlaylistBrowser
//
//  Created by James Rochabrun on 25-05-16.
//  Copyright © 2016 James Rochabrun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Playlist.h"

@interface DetailViewController : UIViewController
@property Playlist *playList;
@property (weak, nonatomic) IBOutlet UIImageView *playlistCoverImage;
@property (weak, nonatomic) IBOutlet UILabel *playlistTitle;

@property (weak, nonatomic) IBOutlet UILabel *playlistDescription;
@property (weak, nonatomic) IBOutlet UILabel *playListArtist0;
@property (weak, nonatomic) IBOutlet UILabel *playListArtist1;
@property (weak, nonatomic) IBOutlet UILabel *playListArtist2;


@end
