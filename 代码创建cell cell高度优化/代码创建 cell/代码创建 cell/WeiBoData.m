//
//  WeiBoData.m
//  代码创建 cell
//
//  Created by 史夏杰 on 16/9/13.
//  Copyright © 2016年 study. All rights reserved.
//

#import "WeiBoData.h"

@implementation WeiBoData

- (id)initWithDict:(NSDictionary  *)dict{
    
    if (self = [super  init]) {
        //  字典中 icon 赋予数据模型
        _icon = dict[@"icon"];
        
        //  字典中 name 赋予数据模型
        _name = dict[@"name"];
        
        //  字典中 time 赋予数据模型
        _time = dict[@"time"];
        
        //  字典中 source 赋予数据模型
        _source = dict[@"source"];
        
        //  字典中 content 赋予数据模型
        _content = dict[@"content"];
        
        //  字典中 image 赋予数据模型
        _image = dict[@"image"];
        
    }
    return self;
}

+ (id)WeiBoDataWithDict:(NSDictionary  *)dict{
    return [[WeiBoData  alloc]initWithDict:dict];
}

@end
