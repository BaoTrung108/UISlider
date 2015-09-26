//
//  ViewController.m
//  UISlider
//
//  Created by trung bao on 26/09/2015.
//  Copyright © Năm 2015 baotrung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSTimer* _timer;
    __weak IBOutlet UISlider *slider;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _timer =[NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(ontimer) userInfo:nil repeats:true];
    slider.transform=CGAffineTransformMakeRotation(M_PI);
    slider.tintColor= [UIColor blackColor];
    slider.thumbTintColor=[UIColor blueColor];
}
-(void) ontimer {
    slider.value+=0.5;
    if (slider.value>=10) {
        slider.value=10;
        [_timer invalidate];
    }
}


@end
