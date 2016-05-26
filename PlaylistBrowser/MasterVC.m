//
//  ViewController.m
//  PlaylistBrowser
//
//  Created by James Rochabrun on 25-05-16.
//  Copyright © 2016 James Rochabrun. All rights reserved.
//

#import "MasterVC.h"
#import "DetailViewController.h"
#import "Playlist.h"

@interface MasterVC ()

@end

@implementation MasterVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self creatingPlaylistInstance];
}

- (void)creatingPlaylistInstance {
    
    for (int index = 0; index < self.playlistImageViews.count; index++) {
        
        Playlist *playList = [[Playlist alloc] initWithIndex:index];
        
        //this is one imageview from the collectio of image views
        UIImageView *playlistImageView = [self.playlistImageViews objectAtIndex:index];
        
        playlistImageView.image = playList.playListIconLarge;
        playlistImageView.backgroundColor = playList.backgroundColor;
    }
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqual:@"playListDetail"]) {
        
        UIImageView *playlistImageView = (UIImageView*)[sender view];
        
        if ([self.playlistImageViews containsObject:playlistImageView]) {
            NSUInteger index = [self.playlistImageViews indexOfObject:playlistImageView];
            
            DetailViewController *detailVC = (DetailViewController *)segue.destinationViewController;
            detailVC.playList = [[Playlist alloc] initWithIndex:index];
        }

    }
}

- (IBAction)showPlayListDetail:(UITapGestureRecognizer *)sender {
    
    [self  performSegueWithIdentifier:@"playListDetail" sender:sender];
    
}


@end

















