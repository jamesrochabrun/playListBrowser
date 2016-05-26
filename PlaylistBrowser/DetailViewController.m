//
//  DetailViewController.m
//  PlaylistBrowser
//
//  Created by James Rochabrun on 25-05-16.
//  Copyright © 2016 James Rochabrun. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.playList) {
        self.playlistCoverImage.image = self.playList.playListIconLarge;
        self.playlistCoverImage.backgroundColor = self.playList.backgroundColor;
        self.playlistTitle.text = self.playList.playListTitle;
        self.playlistDescription.text = self.playList.playlistDescription;
        self.playListArtist0.text = self.playList.playListArtists[0];
        self.playListArtist1.text = self.playList.playListArtists[1];
        self.playListArtist2.text = self.playList.playListArtists[2];

    }
}



@end
