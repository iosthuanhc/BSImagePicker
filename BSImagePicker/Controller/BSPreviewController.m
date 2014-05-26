//
//  BSNewPreviewController.m
//  BSImagePicker
//
//  Created by Joakim Gyllström on 2014-05-24.
//  Copyright (c) 2014 Joakim Gyllström. All rights reserved.
//

#import "BSPreviewController.h"
#import "BSPreviewCollectionViewCellFactory.h"

@interface BSPreviewController ()

@end

@implementation BSPreviewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setAutomaticallyAdjustsScrollViewInsets:NO];
        
        [self.collectionViewFlowLayout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
        
        [self.collectionView setBackgroundColor:[UIColor clearColor]];
        [self.collectionView setShowsHorizontalScrollIndicator:NO];
        [self.collectionView setShowsVerticalScrollIndicator:NO];
        [self.collectionView setAllowsMultipleSelection:YES];
        [self.collectionView setPagingEnabled:YES];
        [self.collectionView setAlwaysBounceHorizontal:YES];
        
        [self setCellFactory:[[BSPreviewCollectionViewCellFactory alloc] init]];
    }
    return self;
}

@end
