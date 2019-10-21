//
//  ItemModel.h
//  WeiBoAnimate
//
//  Created by mac on 2019/10/21.
//  Copyright © 2019 Beijing Zijing Company. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ItemModel : NSObject
@property (nonatomic, copy) NSString *title;
@property (nonatomic, strong) UIImage *image;
+ (NSArray *)getResource;
@end

NS_ASSUME_NONNULL_END
