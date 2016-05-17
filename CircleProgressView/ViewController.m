//
//  ViewController.m
//  CircleProgressView
//
//  Created by 万众科技 on 16/5/11.
//  Copyright © 2016年 万众科技. All rights reserved.
//

#import "ViewController.h"
#import "CircleProgressView.h"

@interface ViewController ()

@property (nonatomic, strong) CircleProgressView * circleProgressView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.circleProgressView = [[CircleProgressView alloc]initWithFrame:CGRectMake(100, 100, 200, 200)];
    self.circleProgressView.progress = 0.2;
    [self.view addSubview:self.circleProgressView];
    
    UISlider * slider = [[UISlider alloc]initWithFrame:CGRectMake(50, 400, 275, 10)];
    [slider addTarget:self action:@selector(changeProgress:) forControlEvents:UIControlEventValueChanged];
    slider.maximumValue = 1.0;
    slider.minimumValue = 0.f;
    slider.value = self.circleProgressView.progress;
    [self.view addSubview:slider];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    self.circleProgressView.progress += (arc4random() % 4 + 1) * 0.1;
//    self.circleProgressView.progress = 0.5;
}

- (void)changeProgress:(UISlider *)slider {
    self.circleProgressView.progress = slider.value;
//    [self.circleProgressView setNeedsDisplay];
}



@end
