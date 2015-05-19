//
//  HomeViewController.m
//  花蜜
//
//  Created by 植梧培 on 15/5/18.
//  Copyright (c) 2015年 机智的新手( http://zhiwupei.sinaapp.com ). All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *seg;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [_seg setBackgroundImage:[UIImage imageNamed:@"whiteBG"] forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
