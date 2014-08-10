//
//  ViewController.m
//  UIStudy
//
//  Created by 齋野 令 on 2014/08/10.
//  Copyright (c) 2014年 齋野令. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)configureView
{
    // 枠を作る
    UIView *customView = [[UIView alloc] init];
    // 枠の位置と大きさを指定
    customView.frame = CGRectMake(0, 0, 300, 300);
    // 枠の場所
    customView.center = CGPointMake(160, 160);
    // 枠の色
    customView.backgroundColor = [UIColor redColor];
    // 枠を表示するかしないか
    customView.hidden = NO;
    // タグをつける
    customView.tag = 1;
    // 枠の透明度
    customView.alpha = 1;
    
    [self.view addSubview:customView];
    
    // 画像用の枠を生成
    UIImageView *customImageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 300, 300)];
    // 表示する画像の設定
    customImageView.image = [UIImage imageNamed:@"36.png"];
    
    [self.view addSubview:customImageView];
}

@end
