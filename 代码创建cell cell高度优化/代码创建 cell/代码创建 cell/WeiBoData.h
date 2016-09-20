//
//  WeiBoData.h
//  代码创建 cell
//
//  Created by 史夏杰 on 16/9/13.
//  Copyright © 2016年 study. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeiBoData : NSObject

@property(nonatomic, copy) NSString  *icon;
@property(nonatomic, copy) NSString  *name;
@property(nonatomic, copy) NSString  *time;
@property(nonatomic, copy) NSString  *source;
@property(nonatomic, copy) NSString  *content;
@property(nonatomic, copy) NSString  *image;

- (id)initWithDict:(NSDictionary  *)dict;

+ (id)WeiBoDataWithDict:(NSDictionary  *)dict;

@end
