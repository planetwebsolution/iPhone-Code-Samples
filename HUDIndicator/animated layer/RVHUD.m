//
//  RVHUD.m
//  animated layer
//
//  Created by Planet Web Solution on 6/17/15.
//  Copyright (c) 2015 pws. All rights reserved.
//

#import "RVHUD.h"

@implementation RVHUD
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        UIView *viw1=[[UIView alloc]init];
        viw1.frame=CGRectMake(110,200,100 ,100);
        viw1.layer.cornerRadius=6.0f;
        viw1.backgroundColor=[UIColor darkGrayColor];
        [self addSubview:viw1];
        
        
        shapeLayer = [CAShapeLayer layer];
        shapeLayer.path=[UIBezierPath bezierPathWithArcCenter:CGPointMake(50, 50) radius:27 startAngle:2*M_PI*0-M_PI_2 endAngle:2*M_PI*1-M_PI_2 clockwise:YES].CGPath;
        [shapeLayer setPosition:CGPointMake(0, 0)];
        [shapeLayer setFillColor:[[UIColor clearColor] CGColor]];
        [shapeLayer setStrokeColor:[[UIColor blackColor] CGColor]];
        [shapeLayer setLineWidth:2.0f];
        [shapeLayer setLineJoin:kCALineJoinRound];
        [shapeLayer setLineDashPattern:
         [NSArray arrayWithObjects:[NSNumber numberWithInt:10],
          [NSNumber numberWithInt:5],
          nil]];

        [[viw1 layer] addSublayer:shapeLayer];
        
        CABasicAnimation *dashAnimation;
        dashAnimation = [CABasicAnimation
                         animationWithKeyPath:@"lineDashPhase"];
        [dashAnimation setFromValue:[NSNumber numberWithFloat:0.0f]];
        [dashAnimation setToValue:[NSNumber numberWithFloat:15.0f]];
        [dashAnimation setDuration:0.75f];
        dashAnimation.speed=3.0f;
        [dashAnimation setRepeatCount:INFINITY];
        
        [shapeLayer addAnimation:dashAnimation forKey:@"linePhase"];
        
    }
    return self;
}
-(void)hiden:(UIView*)viw{
    viw.hidden=YES;
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
