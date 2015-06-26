//
//  ViewController.m
//  animated layer
//
//  Created by Planet Web Solution on 6/16/15.
//  Copyright (c) 2015 pws. All rights reserved.
//

#import "ViewController.h"
#import "RVHUD.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Create the shape layer
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)animation_tap:(id)sender {
   
    
    viw=[[UIView alloc]init];
    viw.frame=CGRectMake(0, 0, 320,568);
    viw.backgroundColor=[[UIColor lightGrayColor]colorWithAlphaComponent:0.8];
    [self.view addSubview:viw];
    
    RVHUD *hud =[[RVHUD alloc]init];
    [viw addSubview:hud];
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint to=[touch locationInView:viw];
    RVHUD *hud =[[RVHUD alloc]init];
    [hud hiden:viw];
}

@end
