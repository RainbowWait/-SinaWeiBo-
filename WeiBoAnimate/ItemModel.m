//
//  ItemModel.m
//  WeiBoAnimate
//
//  Created by mac on 2019/10/21.
//  Copyright © 2019 Beijing Zijing Company. All rights reserved.
//

#import "ItemModel.h"

@implementation ItemModel
-(instancetype)initWithTitle: (NSString *)title imageName: (NSString *)imageName {
    if (self = [super init]) {
        self.title = title;
        self.image = [UIImage imageNamed:imageName];
    }
    return self;
}
+(instancetype)initWithTitle: (NSString *)title imageName: (NSString *)imageName {
    ItemModel *model = [[ItemModel alloc]initWithTitle:title imageName:imageName];
    return model;
}

+ (NSArray *)getResource {
    NSArray *titleArray = @[@"点评", @"更多", @"拍摄",@"相册", @"文字", @"签到"];
    NSArray *imageNameArray = @[@"tabbar_compose_review", @"tabbar_compose_more", @"tabbar_compose_camera", @"tabbar_compose_photo", @"tabbar_compose_idea", @"tabbar_compose_review"];
    NSMutableArray *array = [NSMutableArray array];
    for (NSInteger i = 0; i < titleArray.count; i++) {
        NSString *title = titleArray[i];
        NSString *imageName = imageNameArray[i];
        ItemModel *model = [ItemModel initWithTitle:title imageName:imageName];
        [array addObject:model];
    }
    return array;
}
@end
