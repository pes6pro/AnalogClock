//
//  ClockView.h
//  AnalogClock
//
//  Created by Tran Van Bang on 10/26/13.
//  Copyright (c) 2013 Tran Van Bang. All rights reserved.
//

#import <UIKit/UIKit.h>

#define degreesToRadians(deg) (deg / 180.0 * M_PI)

@interface ClockView : UIView



@property (nonatomic, strong) UIImage *secondHandImage;
@property (nonatomic, strong) UIImage *minuteHandImage;
@property (nonatomic, strong) UIImage *hourHandImage;
@property (nonatomic, strong) UIImage *centerCapImage;
@property (nonatomic, strong) UIImage *clockFaceImage;

@property (nonatomic, strong) NSTimer    *clockUpdateTimer;
@property (nonatomic, strong) NSCalendar *calendar;
@property (nonatomic, strong) NSDate     *now;

@property (nonatomic, strong) UIImageView *secondHandImageView;
@property (nonatomic, strong) UIImageView *minuteHandImageView;
@property (nonatomic, strong) UIImageView *hourHandImageView;
@property (nonatomic, strong) UIImageView *clockFaceImageView;
@property (nonatomic, strong) UIImageView *centreCapImageView;


- (id)initWithFrame:(CGRect)frame;
- (id)initWithFrame:(CGRect)frame andImages:(NSDictionary *)images;
- (void)start;
- (void)stop;
- (void)updateClockTimeAnimated:(BOOL)animated;

@end
