//
//  PublishVC.m
//  WeiBoAnimate
//
//  Created by mac on 2019/10/21.
//  Copyright © 2019 Beijing Zijing Company. All rights reserved.
//

#import "PublishVC.h"
#import "ItemModel.h"
#import "MenuItemButton.h"
@interface PublishVC ()
@property (nonatomic, strong) NSMutableArray *buttonsArray;
@property (nonatomic, strong) NSTimer *timer;
@end

@implementation PublishVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.buttonsArray = [NSMutableArray array];
    [self setUpAllBtns];
   __block NSInteger i = 0;
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.1 repeats:YES block:^(NSTimer * _Nonnull timer) {
        [UIView animateWithDuration:0.8 delay:0 usingSpringWithDamping:0.7 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
            if (i >= self.buttonsArray.count) {
                [self.timer invalidate];
                return ;
            }
            MenuItemButton *btn = self.buttonsArray[i];
            btn.transform = CGAffineTransformIdentity;
            i++;
            
        } completion:^(BOOL finished) {
            
        }];
    }];
}
- (void)setUpAllBtns
{
    NSArray *dataArray = [ItemModel getResource];
    int cols = 3;
    int col = 0;
    int row = 0;
    CGFloat x = 0;
    CGFloat y = 0;
    CGFloat wh = 100;
    CGFloat margin = ([UIScreen mainScreen].bounds.size.width - cols * wh) / (cols + 1);
    CGFloat oriY = 300;
    
    int count = (int)dataArray.count;
    for (int i = 0; i < count; i++) {
        UIButton *btn = [MenuItemButton buttonWithType:UIButtonTypeCustom];
        
        col = i % cols;
        row = i / cols;
        
        x = margin + col * (margin + wh);
        y = row * (margin + wh) + oriY;
        
        
        btn.frame = CGRectMake(x, y, wh, wh);
        
        // 设置按钮的图片和文字
        ItemModel *item = dataArray[i];
        
        [btn setImage:item.image forState:UIControlStateNormal];
        [btn setTitle:item.title forState:UIControlStateNormal];
        
        // 偏移到底部
        btn.transform = CGAffineTransformMakeTranslation(0, self.view.bounds.size.height);
        
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
        [btn addTarget:self action:@selector(btnClick1:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.buttonsArray addObject:btn];
        
        [self.view addSubview:btn];
        
    }
}
- (void)btnClick: (UIButton *)sender {
    [UIView animateWithDuration:0.5 animations:^{
        
        sender.transform = CGAffineTransformMakeScale(1.2, 1.2);
    }];
    
}

- (void)btnClick1: (UIButton *)sender {
    [UIView animateWithDuration:0.5 animations:^{
        sender.transform = CGAffineTransformScale(sender.transform, 2.0, 2.0);
        sender.alpha = 0;
    }];
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
