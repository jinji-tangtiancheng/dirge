//
//  ViewController.m
//  dirge
//
//  Created by 唐天成 on 16/8/22.
//  Copyright © 2016年 唐天成. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"123");
    NSLog(@"789");
    
    UIView *v1 = [[UIView alloc]initWithFrame:CGRectMake(0,0,300,200)];
    v1.backgroundColor = [UIColor greenColor];
     [self.view addSubview:v1];
    UIView *v2 = [[UIView alloc]initWithFrame:CGRectMake(0,0,50,50)];
    v2.backgroundColor = [UIColor yellowColor];
    [v1 addSubview:v2];
    UIView *v3 = [[UIView alloc]initWithFrame:CGRectMake(100,100,100,100)];
    v3.backgroundColor = [UIColor redColor];
    [v1 addSubview:v3];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
