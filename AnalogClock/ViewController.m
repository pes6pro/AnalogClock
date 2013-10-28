//
//  ViewController.m
//  AnalogClock
//
//  Created by Tran Van Bang on 10/26/13.
//  Copyright (c) 2013 Tran Van Bang. All rights reserved.
//

#import "ViewController.h"
#import "ClockView.h"
@interface ViewController ()
@property (nonatomic, strong) ClockView *clockView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self instantiateClockAndAddImagesAfterAndDoNotStartAnimation];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)instantiateClockAndAddImagesAfterAndDoNotStartAnimation
{
    ClockView *analogClock = [[ClockView alloc] initWithFrame:CGRectMake(20, 60, 180, 180)];
    analogClock.clockFaceImage  = [UIImage imageNamed:@"clock"];
    analogClock.hourHandImage   = [UIImage imageNamed:@"clock_hour_hand"];
    analogClock.minuteHandImage = [UIImage imageNamed:@"clock_minute_hand"];
    analogClock.secondHandImage = [UIImage imageNamed:@"clock_second_hand"];
    analogClock.centerCapImage  = [UIImage imageNamed:@"clock_centre_point"];
    
    [self.view addSubview:analogClock];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(updateClock:)];
    [analogClock addGestureRecognizer:tap];
    
    self.clockView = analogClock;
    
    [analogClock updateClockTimeAnimated:YES];
    [analogClock start];
}

- (void)updateClock:(id)sender
{
    [self.clockView updateClockTimeAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
