//
//  ViewController.m
//  FGit
//
//  Created by asd on 15/7/16.
//  Copyright (c) 2015年 asd. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn=[UIButton new];
    [btn setTitle:@"How to use Git from here" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    
    [self.view addSubview:btn];
    
    
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        
       // make.top.equalTo(self.view.mas_top).with.offset(100);
       // make.left.equalTo(self.view.mas_left).with.offset(10);
        //make.right.equalTo(self.view.mas_right).with.offset(10);
        
        make.centerY.equalTo(self.view.mas_centerY);
        make.centerX.equalTo(self.view.mas_centerX);
         make.height.equalTo(@40);
        make.width.equalTo(@250);
        // 40高度
        
        
        
    }];
    
    
    
    // Do any additional setup after loading the view.
}

-(void) click:(UIButton*)a
{
    UIWebView *web=[UIWebView new];
    web.frame=CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen] .bounds.size.height);
    
    NSURLRequest *request =[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.liaoxuefeng.com/wiki/0013739516305929606dd18361248578c67b8067c8c017b000"]];
    [self.view addSubview: web];
    [web loadRequest:request];
    
    
    
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
