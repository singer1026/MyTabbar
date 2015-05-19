//
//  ViewController.m
//  花蜜
//
//  Created by 植梧培 on 15/5/18.
//  Copyright (c) 2015年 机智的新手( http://zhiwupei.sinaapp.com ). All rights reserved.
//

#import "ViewController.h"
#import "Custom.h"
#import "UIImage+Color.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.childViewControllers enumerateObjectsUsingBlock:^(UIViewController *obj, NSUInteger idx, BOOL *stop) {
        if (idx<2) {
            obj.tabBarItem.image = [[UIImage imageNamed:[NSString stringWithFormat:@"ic_tabhost_%lu",(unsigned long)idx]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
            obj.tabBarItem.selectedImage = [[UIImage imageNamed:[NSString stringWithFormat:@"ic_tabhost_%lu_checked",(unsigned long)idx]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
            
        }else if(idx>2){
            obj.tabBarItem.image = [[UIImage imageNamed:[NSString stringWithFormat:@"ic_tabhost_%lu",(unsigned long)idx-1]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
            obj.tabBarItem.selectedImage = [[UIImage imageNamed:[NSString stringWithFormat:@"ic_tabhost_%lu_checked",(unsigned long)idx-1]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        }else{
            obj.tabBarItem.enabled=NO;
            obj.tabBarItem.title=@"";
        }
    }];
    self.tabBar.barTintColor = [UIColor whiteColor];
    
    [self.tabBar  setShadowImage:[UIImage imageWithColor:[UIColor clearColor]]];
    self.tabBar.backgroundImage =[UIImage imageWithColor:[UIColor clearColor]];//去除黑线
    UIView *line = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.tabBar.bounds.size.width, 1)];//把黑线重新加上，这样黑线可以在按钮下面了
    [self.tabBar addSubview:line];
    line.backgroundColor = [UIColor grayColor];
    
    UIButton *button = [[Custom alloc]initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/2-20, -23, 55, 72)];
    button.imageView.contentMode = UIViewContentModeScaleAspectFit;
    [button setImage:[UIImage imageNamed:@"ic_camera"] forState:UIControlStateNormal];
    [self.tabBar addSubview:button];
    [self.tabBar bringSubviewToFront:button];
    [button addTarget:self action:@selector(selectImagePicker) forControlEvents:UIControlEventTouchUpInside];
}

- (void)selectImagePicker {
    UIActionSheet *sheet = [[UIActionSheet alloc]initWithTitle:@"" delegate:nil cancelButtonTitle:@"取消" destructiveButtonTitle:nil otherButtonTitles:@"相机",@"相册", nil];
    [sheet showInView:self.view];
}

@end
