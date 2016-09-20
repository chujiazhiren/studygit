//
//  WeiBoFrame.h
//  代码创建 cell
//
//  Created by 史夏杰 on 16/9/14.
//  Copyright © 2016年 study. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class WeiBoData;

@interface WeiBoFrame : NSObject

@property(nonatomic, assign,readonly)CGRect  iconFrame;
@property(nonatomic, assign,readonly)CGRect  nameFrame;
@property(nonatomic, assign,readonly)CGRect  timeFrame;
@property(nonatomic, assign,readonly)CGRect  sourceFrame;
@property(nonatomic, assign,readonly)CGRect  contentFrame;
@property(nonatomic, assign,readonly)CGRect  imageFrame;
@property(nonatomic, assign,readonly)CGFloat  cellHeight;

@property(nonatomic, strong)WeiBoData  *weiBoData;

@end
