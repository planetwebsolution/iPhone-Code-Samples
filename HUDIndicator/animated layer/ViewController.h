//
//  ViewController.h
//  animated layer
//
//  Created by Planet Web Solution on 6/16/15.
//  Copyright (c) 2015 pws. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    CAShapeLayer *shapeLayer;
    UIView *viw;
}
@property (weak, nonatomic) IBOutlet UIButton *animeted;
- (IBAction)animation_tap:(id)sender;

@end

