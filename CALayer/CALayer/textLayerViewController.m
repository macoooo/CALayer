//
//  textLayerViewController.m
//  CALayer
//
//  Created by 强淑婷 on 2019/8/1.
//  Copyright © 2019 强淑婷. All rights reserved.
//

#import "textLayerViewController.h"

@interface textLayerViewController ()
@property (nonatomic, strong) UIView *labelView;

@end

@implementation textLayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    _labelView = [[UIView alloc] initWithFrame:CGRectMake(10, 50, 100, 100)];
    [self.view addSubview:_labelView];
    
    CATextLayer *textLayer = [CATextLayer layer];
    textLayer.frame = _labelView.bounds;
    [_labelView.layer addSublayer:textLayer];
    textLayer.foregroundColor = [UIColor blackColor].CGColor;
    textLayer.alignmentMode = kCAAlignmentJustified;
    textLayer.wrapped = YES;//自动换行，默认NO
    
    UIFont *font = [UIFont systemFontOfSize:15];
    CFStringRef fontName = (__bridge CFStringRef)font.fontName;
    CGFontRef fontRef = CGFontCreateWithFontName(fontName);
    textLayer.font = fontRef;
    textLayer.fontSize = font.pointSize;
    CGFontRelease(fontRef);
    
    textLayer.string = @"hgfghgjgdghiewirwh thgjkvnjvnjvnxvndvnjdgnfjghfjghfghdjkgdkghgfghgjgdghiewirwh thgjkvnjvnjvnxvndvnjdgnfjghfjghfghdjkgdkg";
    textLayer.contentsScale = [UIScreen mainScreen].scale;
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
