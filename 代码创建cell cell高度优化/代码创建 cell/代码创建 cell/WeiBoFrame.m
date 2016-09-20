//
//  WeiBoFrame.m
//  代码创建 cell
//
//  Created by 史夏杰 on 16/9/14.
//  Copyright © 2016年 study. All rights reserved.
//

#import "WeiBoFrame.h"
#import "WeiBoData.h"

#define kMargins  10
#define kIconWH   30
#define kImageWH  80
#define kNameFont  [UIFont systemFontOfSize:14]
#define kTimeFont  [UIFont systemFontOfSize:14]
#define kSourceFont  [UIFont systemFontOfSize:14]
#define kContentFont  [UIFont systemFontOfSize:15]


@implementation WeiBoFrame

- (void)setWeiBoData:(WeiBoData *)weiBoData{
    
    _weiBoData = weiBoData;
    
    //  设置 icon  大小
    CGFloat  iconX = kMargins;
    CGFloat  iconY = kMargins;
    _iconFrame= CGRectMake(iconX, iconY, kIconWH, kIconWH);
    
    //  设置 name  大小
    CGFloat  nameX = CGRectGetMaxX(_iconFrame) + kMargins;
    CGFloat  nameY = kMargins;
    CGSize  nameSize = [_weiBoData.name  sizeWithFont:kNameFont];
    _nameFrame = CGRectMake(nameX, nameY, nameSize.width, nameSize.height);
    
    //  设置 time  大小
    CGFloat  timeX = nameX;
    CGFloat  timeY = MAX(CGRectGetMaxY(_iconFrame), CGRectGetMaxY(_nameFrame)) +kMargins;
    CGSize   timeSize = [_weiBoData.time  sizeWithFont:kTimeFont];
    _timeFrame = CGRectMake(timeX, timeY, timeSize.width, timeSize.height);
    
    //  设置 source 大小
    CGFloat  sourceX = CGRectGetMaxX(_timeFrame)  + kMargins;
    CGFloat  sourceY = timeY;
    CGSize  sourceSzie = [_weiBoData.source  sizeWithFont:kSourceFont];
    _sourceFrame = CGRectMake(sourceX, sourceY, sourceSzie.width, sourceSzie.height);
    
    //  设置  content  大小
    CGFloat  contentX = kMargins;
    CGFloat  contentY = CGRectGetMaxY(_timeFrame) +kMargins;
    CGFloat  contentWidth = 320 - kMargins * 2;
    CGSize  contentSize = [_weiBoData.content  sizeWithFont:kContentFont  constrainedToSize:CGSizeMake(contentWidth, MAXFLOAT)];
    _contentFrame = CGRectMake(contentX, contentY, contentWidth, contentSize.height);
    
    //  设置 image  大小
    CGFloat  imageX = kMargins;
    CGFloat  imageY = CGRectGetMaxY(_contentFrame) + kMargins;
    _imageFrame = CGRectMake(imageX, imageY, kImageWH, kImageWH);
    
    //  设置 cell 高度
    _cellHeight = CGRectGetMaxY(_imageFrame) + kMargins;
}

@end
