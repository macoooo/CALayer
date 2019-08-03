//
//  zPositionViewController.m
//  CALayer
//
//  Created by 强淑婷 on 2019/8/1.
//  Copyright © 2019 强淑婷. All rights reserved.
//

#import "zPositionViewController.h"

@interface zPositionViewController ()

@end

@implementation zPositionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(10, 50, 100, 100)];
    greenView.backgroundColor = [UIColor greenColor];
    greenView.layer.cornerRadius = 10;
    [self.view addSubview:greenView];
    
    UILabel *redView = [[UILabel alloc] initWithFrame:CGRectMake(50, 130, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    redView.layer.cornerRadius = 10;
    redView.layer.masksToBounds = YES;
    [self.view addSubview:redView];
    
    greenView.layer.zPosition = 1;
    
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
