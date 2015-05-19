//
//  BaseNaviViewController.m
//  QuickCall
//
//  Created by 植梧培 on 15/4/10.
//  Copyright (c) 2015年 机智的新手(http://zhiwupei.sinaapp.com). All rights reserved.
//

#import "BaseNaviViewController.h"

@interface BaseNaviViewController ()

@end

@implementation BaseNaviViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [UINavigationBar appearance].tintColor=[UIColor whiteColor];
    [UINavigationBar appearance].barTintColor=[UIColor purpleColor];
    [UINavigationBar appearance].titleTextAttributes=@{NSForegroundColorAttributeName:[UIColor whiteColor]};

}


@end
