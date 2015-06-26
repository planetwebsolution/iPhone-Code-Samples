//
//  NextViewController.m
//  PieChartSample
//
//  Created by Planet Web Solution on 6/19/15.
//  Copyright (c) 2015 MyAppControls. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"%@",self.imgs);
    self.title=self.tiltl;
    self.img.image=[UIImage imageNamed:self.imgs];
    self.img.contentMode=UIViewContentModeScaleAspectFit;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
