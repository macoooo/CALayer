//
//  gradientLayerViewController.m
//  CALayer
//
//  Created by 强淑婷 on 2019/8/1.
//  Copyright © 2019 强淑婷. All rights reserved.
//

#import "gradientLayerViewController.h"

@interface gradientLayerViewController ()

@end

@implementation gradientLayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
//
//    gradientLayer.frame = self.view.bounds;
//
//    [self.view.layer addSublayer:gradientLayer];
//
//    //set gradient colors
//
//    gradientLayer.colors = @[(__bridge id)[UIColor redColor].CGColor,
//
//                             (__bridge id)[UIColor blueColor].CGColor];
//
//    //set gradient start and end points
//
//    gradientLayer.startPoint = CGPointMake(0, 0);
//
//    gradientLayer.endPoint = CGPointMake(1, 1);
    
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    
    gradientLayer.frame = self.view.bounds;
    
    [self.view.layer addSublayer:gradientLayer];
    
    //set gradient colors
    
    gradientLayer.colors = @[(__bridge id)[UIColor redColor].CGColor,(__bridge id)[UIColor yellowColor].CGColor,(__bridge id)[UIColor greenColor].CGColor];
                              //set locations
                              
                              gradientLayer.locations = @[@0.0, @0.25, @0.5];
                              
                              //set gradient start and end points
                              
                              gradientLayer.startPoint = CGPointMake(0, 0);
                              
                              gradientLayer.endPoint = CGPointMake(1, 1);
    // Do any additional setup after loading the view.
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
