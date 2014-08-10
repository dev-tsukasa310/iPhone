//
//  ViewController.h
//  Study
//
//  Created by 齋野 令 on 2014/08/10.
//  Copyright (c) 2014年 齋野令. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIWebViewDelegate>
{
    UILabel *label;
    UIButton *button;
    UIWebView *webView;
}

@property (strong, nonatomic) UILabel *label;
@property (strong, nonatomic) UIButton *button;
@property (strong, nonatomic) UIWebView *webView;

// 表示内容を設定するメソッド
- (void)configureView;

// ボタンを押した際のメソッド
- (void)action;

@end
