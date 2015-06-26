//
//  ViewController.m
//  PieChartSample
//
//  Created by Planet Web Solution on 6/16/15.
//  Copyright (c) 2015 pws. All rights reserved.//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) NSMutableArray *values;
@property (strong, nonatomic) NSMutableArray *labels;
@property (strong, nonatomic) NSMutableArray *colors;
@property (strong,nonatomic)NSMutableArray *img;
@property (nonatomic) BOOL inserting;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor=[[UIColor colorWithRed:133.0/255.0 green:204.0/255.0 blue:240.0/255.0 alpha:1.0]colorWithAlphaComponent:0.8];
    self.labels=[[NSMutableArray alloc]initWithObjects:@"Car",@"Food",@"Movies",@"Places",@"City",@"Education",@"Clothes",@"Mobile",nil];
    self.img=[[NSMutableArray alloc]initWithObjects:@"Auto.jpg",@"Food.jpg",@"movies.jpg",@"places.jpg",@"city.jpg",@"education.jpg",@"clothes.jpg",@"ios.jpg", nil];

    self.values = [[NSMutableArray alloc] init];
    
    [self.values addObject:[NSNumber numberWithInt:40]];
    [self.values addObject:[NSNumber numberWithInt:40]];
    [self.values addObject:[NSNumber numberWithInt:40]];
    [self.values addObject:[NSNumber numberWithInt:40]];
    [self.values addObject:[NSNumber numberWithInt:40]];
    [self.values addObject:[NSNumber numberWithInt:40]];
    [self.values addObject:[NSNumber numberWithInt:40]];
    [self.values addObject:[NSNumber numberWithInt:40]];
    
    self.pieChartView.dataSource = self;
    self.pieChartView.delegate = self;
    self.pieChartView.animationDuration = 0.5;
    self.pieChartView.sliceColor = [MCUtil flatWetAsphaltColor];
    self.pieChartView.borderColor = [MCUtil flatSunFlowerColor];
    self.pieChartView.selectedSliceColor = [MCUtil flatSunFlowerColor];
    self.pieChartView.textColor = [MCUtil flatSunFlowerColor];
    self.pieChartView.selectedTextColor = [MCUtil flatWetAsphaltColor];
    self.pieChartView.borderPercentage = 0.01;
    
       
}

- (NSInteger)numberOfSlicesInPieChartView:(MCPieChartView *)pieChartView {
    return self.values.count;
}

- (UIImage*)pieChartView:(MCPieChartView *)pieChartView imageForSliceAtIndex:(NSInteger)index
{
//    if (index == 1) {
//        return [UIImage imageNamed:@"texture-yellow-dots"];
//    }
    
    return nil;
}
- (void)pieChartView:(MCPieChartView*)pieChartView didSelectSliceAtIndex:(NSInteger)index
{
    NextViewController *nvc=[[NextViewController alloc]init];
    nvc=[self.storyboard instantiateViewControllerWithIdentifier:@"nextvc"];
    NSString *str=[NSString stringWithFormat:@"%@",[self.labels objectAtIndex:index]];
    nvc.tiltl=str;
    nvc.imgs=[self.img objectAtIndex:index];
    [self.navigationController pushViewController:nvc animated:YES];
    
    //    [self performSegueWithIdentifier:@"seguePush" sender:self];
    
}
- (NSString *)pieChartView:(MCPieChartView*)pieChartView textForSliceAtIndex:(NSInteger)index{
    NSString *str=[NSString stringWithFormat:@"%@",[self.labels objectAtIndex:index]];
    return str;
}
//
//- (UIColor*)pieChartView:(MCPieChartView *)pieChartView colorForTextAtIndex:(NSInteger)index
//{
////    if (index == 0) {
////        return [UIColor blackColor];
////    }
//    UIColor *colr=[self.colors objectAtIndex:index];
//    return colr;
//}

- (CGFloat)pieChartView:(MCPieChartView *)pieChartView valueForSliceAtIndex:(NSInteger)index {
    return [[self.values objectAtIndex:index] floatValue];
}

- (IBAction)change:(id)sender {
    
    static int i = 0;
    
    self.values = [[NSMutableArray alloc] init];
    
    if ((i % 2) == 0) {
        [self.values addObject:[NSNumber numberWithInt:50]];
        [self.values addObject:[NSNumber numberWithInt:40]];
        [self.values addObject:[NSNumber numberWithInt:30]];
        [self.values addObject:[NSNumber numberWithInt:20]];
        [self.values addObject:[NSNumber numberWithInt:10]];
    }
    else {
        [self.values addObject:[NSNumber numberWithInt:10]];
        [self.values addObject:[NSNumber numberWithInt:20]];
        [self.values addObject:[NSNumber numberWithInt:30]];
        [self.values addObject:[NSNumber numberWithInt:40]];
        [self.values addObject:[NSNumber numberWithInt:50]];
    }
    
    i++;
    
    [self.pieChartView reloadData];
}
-(void)viewWillAppear:(BOOL)animated{
    [self.pieChartView reloadData];
    
}
- (IBAction)rotatedclk:(id)sender {
    CABasicAnimation *fullRotation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    fullRotation.fromValue = [NSNumber numberWithFloat:0];
    fullRotation.toValue = [NSNumber numberWithFloat:((360*M_PI)/180)];
    fullRotation.duration = 2.0;
    fullRotation.repeatCount =1e100f;
    
    [self.pieChartView.layer addAnimation:fullRotation forKey:@"360"];
}
@end
