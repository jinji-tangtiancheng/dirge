//
//  ViewController.m
//  dirge
//
//  Created by 唐天成 on 16/8/21.
//  Copyright © 2016年 唐天成. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];NSLog(@"123");
    UIView* v=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 200, 300)];
    v.backgroundColor=[UIColor greenColor];
    [self.view addSubview:v];
    UIView* v2 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    [v addSubview:v2];
    v2.backgroundColor = [UIColor redColor];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
