//
//  CoWorkersSlideShowTVC.h
//  Persolio
//
//  Created by Ali Soume`e on 5/12/1396 AP.
//  Copyright © 1396 Ali Soume`e. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CoWorkersSlideShowTVC : UITableViewCell
@property (weak, nonatomic) IBOutlet UIView *contentV;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

- (void)prepareWith:(CGFloat)width;


@end
