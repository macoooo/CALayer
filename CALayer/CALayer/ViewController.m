//
//  ViewController.m
//  CALayer
//
//  Created by 强淑婷 on 2019/7/31.
//  Copyright © 2019 强淑婷. All rights reserved.
//

#import "ViewController.h"
#import "zPositionViewController.h"
#import "shadowViewController.h"
#import "rectPathViewController.h"
#import "gradientLayerViewController.h"
#import "textLayerViewController.h"

@interface ViewController ()<CALayerDelegate, UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    
    
//    UIView *centerView = [[UIView alloc] initWithFrame:CGRectMake(self.view.center.x - 100, 200, 200, 200)];
//    centerView.backgroundColor = [UIColor whiteColor];
//    [self.view addSubview:centerView];
//    
//    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(self.view.center.x - 100, 200, 50, 50)];
//    redView.backgroundColor = [UIColor redColor];
//    [centerView addSubview:redView];
//    
//    CALayer *blueLayer = [CALayer layer];
//    blueLayer.frame = CGRectMake(50, 50, 100, 100);
//    blueLayer.backgroundColor = [UIColor blueColor].CGColor;
//    blueLayer.delegate = self;
//    blueLayer.contentsScale = [UIScreen mainScreen].scale;
//    [centerView.layer addSublayer:blueLayer];
//    [blueLayer display];
//    centerView.layer.anchorPoint = CGPointMake(0.5, 0.1);
    
//    UIImage *image = [UIImage imageNamed:@"bigWhite"];
//    centerView.layer.contents = (__bridge id _Nullable)(image.CGImage);//因为CGImageRef并不是一个真正的 Cocoa对象，而是一个Core Foundation类型。
//    centerView.layer.contentsGravity = kCAGravityCenter;//还能在图层中等比例拉伸以适应图层 的边界。
//    //view.contentMode = UIViewContentModeScaleAspectFit;
//
//    centerView.layer.contentsScale = image.scale;
    // Do any additional setup after loading the view.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 8;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    NSArray *titleArray = [NSArray arrayWithObjects:@"zPosition", @"shadow",@"rectPath",@"gradientLayer",@"textLayer",@"111",@"111",@"111",nil];
    cell.textLabel.text = titleArray[indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0 && indexPath.row == 0) {
        zPositionViewController *new = [[zPositionViewController alloc] init];
        [self presentViewController:new animated:YES completion:nil];
    } else if (indexPath.row == 1) {
        shadowViewController *new = [[shadowViewController alloc] init];
        [self presentViewController:new animated:YES completion:nil];
    } else if (indexPath.row == 2) {
        rectPathViewController *new = [[rectPathViewController alloc] init];
        [self presentViewController:new animated:YES completion:nil];
    } else if (indexPath.row == 3) {
        gradientLayerViewController *new = [[gradientLayerViewController alloc] init];
        [self presentViewController:new animated:YES completion:nil];
    } else if (indexPath.row == 4) {
        textLayerViewController *new = [[textLayerViewController alloc] init];
        [self presentViewController:new animated:YES completion:nil];
    }
}
- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx {
    CGContextSetLineWidth(ctx, 10.0f);
    CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);
    CGContextStrokeEllipseInRect(ctx, layer.bounds);
}
@end
