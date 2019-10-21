//
//  ViewController.m
//  WeiBoAnimate
//
//  Created by mac on 2019/10/15.
//  Copyright © 2019 Beijing Zijing Company. All rights reserved.
//

#import "ViewController.h"
#import "PublishVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)addAction:(UIButton *)sender {
    PublishVC *vc = [PublishVC new];
    [self presentViewController:vc animated:YES completion:nil];
}


@end
