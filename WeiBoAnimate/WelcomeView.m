

//
//  WelcomeView.m
//  WeiBoAnimate
//
//  Created by mac on 2019/10/15.
//  Copyright © 2019 Beijing Zijing Company. All rights reserved.
//

#import "WelcomeView.h"

@interface WelcomeView ()
@property (weak, nonatomic) IBOutlet UIImageView *sloganImg;
@property (weak, nonatomic) IBOutlet UIImageView *iconImg;//头像
@property (weak, nonatomic) IBOutlet UILabel *welcomeLab;

@end

@implementation WelcomeView

+ (instancetype)welcomeView {
    return [[NSBundle mainBundle]loadNibNamed:@"WelcomeView" owner:nil options:nil].firstObject;
}
- (void)didMoveToSuperview {
    [super didMoveToSuperview];
    NSLog(@"%s",__func__);
    self.iconImg.transform = CGAffineTransformMakeTranslation(0, 70);
    [UIView animateWithDuration:1.5 animations:^{
        self.sloganImg.alpha = 0;
    } completion:^(BOOL finished) {
        self.iconImg.hidden = NO;
        [UIView animateWithDuration:1.0 delay:0 usingSpringWithDamping:0.4 initialSpringVelocity:0 options:UIViewAnimationOptionCurveLinear animations:^{
            self.iconImg.transform = CGAffineTransformIdentity;
        } completion:^(BOOL finished) {
            self.welcomeLab.hidden = NO;
            self.welcomeLab.alpha = 0;
            [UIView animateWithDuration:0.75 animations:^{
                self.welcomeLab.alpha = 1.0;
            } completion:^(BOOL finished) {
                [self removeFromSuperview];
            }];
        }];
    }];
}
- (void)didMoveToWindow {
    [super didMoveToWindow];
    NSLog(@"%s",__func__);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
