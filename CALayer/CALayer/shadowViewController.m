//
//  shadowViewController.m
//  CALayer
//
//  Created by 强淑婷 on 2019/8/1.
//  Copyright © 2019 强淑婷. All rights reserved.
//

#import "shadowViewController.h"

@interface shadowViewController ()

@end

@implementation shadowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *layerView1 = [[UIView alloc] initWithFrame:CGRectMake(10, 50, 100, 100)];
    layerView1.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:layerView1];
    
    UIView *layerView2 = [[UIView alloc] initWithFrame:CGRectMake(10, 250, 100, 100)];
    layerView2.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:layerView2];
    
    layerView1.layer.shadowOpacity = 0.5f;
    layerView2.layer.shadowOpacity = 0.5f;
    
    CGMutablePathRef squarePath = CGPathCreateMutable();
    CGPathAddRect(squarePath, NULL, layerView1.bounds);
    layerView1.layer.shadowPath = squarePath;
    CGPathRelease(squarePath);
    
    CGMutablePathRef circlePath = CGPathCreateMutable();
    CGPathAddEllipseInRect(circlePath, NULL, layerView2.bounds);
    layerView2.layer.shadowPath = circlePath;
    CGPathRelease(circlePath);
    
    
    
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
