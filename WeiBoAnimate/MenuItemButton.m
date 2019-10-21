//
//  MenuItemButton.m
//  WeiBoAnimate
//
//  Created by mac on 2019/10/21.
//  Copyright © 2019 Beijing Zijing Company. All rights reserved.
//

#import "MenuItemButton.h"

@implementation MenuItemButton
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.imageView.contentMode = UIViewContentModeCenter;
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.imageView.frame = CGRectMake(0, 0,  self.bounds.size.width, 71);
    self.titleLabel.frame = CGRectMake(0, 71, self.bounds.size.width, self.bounds.size.height - 71);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
