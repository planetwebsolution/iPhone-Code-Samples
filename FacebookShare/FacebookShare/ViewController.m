//
//  ViewController.m
//  FacebookShare
//
//  Created by Planet Web Solution on 6/16/15.
//  Copyright (c) 2015 pws. All rights reserved.
//

#import "ViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKShareKit/FBSDKShareKit.h>
@interface ViewController ()
{
  
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
        // Dispose of any resources that can be recreated.
}

- (IBAction)fbshare:(id)sender {
  
   
    FBSDKShareLinkContent *content = [[FBSDKShareLinkContent alloc] init];
    content.contentTitle=@"title";
    content.contentDescription=@"sdf";
    content.imageURL=[NSURL URLWithString:@""];
    content.contentURL = [NSURL URLWithString:@"https://developers.facebook.com"];

    
    [FBSDKShareDialog showFromViewController:self
                                 withContent:content
                                        delegate:nil];

}

@end
