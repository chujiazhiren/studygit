//
//  WeiBoCell.m
//  代码创建 cell
//
//  Created by 史夏杰 on 16/9/13.
//  Copyright © 2016年 study. All rights reserved.
//

#import "WeiBoCell.h"
#import "WeiBoFrame.h"
#import "WeiBoData.h"

@implementation WeiBoCell
{
    UIImageView *_icon;
    UILabel  *_name;
    UILabel  *_time;
    UILabel  *_source;
    UILabel   *_content;
    UIImageView  *_image;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super  initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        //   头像
        _icon = [[UIImageView  alloc] init];
        [self.contentView  addSubview:_icon];
        
        //   用户名
        _name = [[UILabel   alloc] init];
        _name.textColor = [UIColor   darkGrayColor];
        _name.font = [UIFont  systemFontOfSize:14];
        [self.contentView  addSubview:_name];
        
        //   时间
        _time =  [[UILabel  alloc] init];
        _time.font = [UIFont  systemFontOfSize:14];
        [self.contentView   addSubview:_time];
        
        //   客户端
        _source =  [[UILabel  alloc] init];
        _source.font =[UIFont  systemFontOfSize:14];
        _source.textColor = [UIColor  yellowColor];
        [self.contentView  addSubview:_source];
        
        //   正文
        _content = [[UILabel  alloc] init];
        _content.numberOfLines = 0;
        _content.textColor = [UIColor  greenColor];
        _content.font = [UIFont  systemFontOfSize:15];
        [self.contentView  addSubview:_content];
        
        //   图片
        _image = [[UIImageView  alloc] init];
        [self.contentView  addSubview:_image];
        
    }
    
    return self;
}

#pragma  mark -  重写 WeiBoFrame  set 方法
- (void)setWeiBoFrame:(WeiBoFrame *)weiBoFrame{
    
    _weiBoFrame = weiBoFrame;
    
    //   设置 cell 数据内容
    [self   setData];
    
    //   设置 cell frame
    [self  setDataFrame];
}

- (void)setData{
    
    WeiBoData  *weiBo = _weiBoFrame.weiBoData;
    
    //   设置 cell 中的 icon
    _icon.image = [UIImage  imageNamed:weiBo.icon];
    
    //   设置 cell 中的 name
    _name.text = weiBo.name;
    
    //   设置 cell 中的 time
    _time.text = weiBo.time;
    
    //   设置 cell 中的 source
    _source.text = weiBo.source;
    
    //   设置 cell 中的  content
    _content.text = weiBo.content;
    
    //   设置  cell  中的  image
    _image.image = [UIImage  imageNamed:weiBo.image];
}

- (void)setDataFrame{
    
    //  设置 icon  大小
    _icon.frame = _weiBoFrame.iconFrame;
    
    //  设置 name  大小
    _name.frame = _weiBoFrame.nameFrame;
    
    //  设置 time  大小
    _time.frame = _weiBoFrame.timeFrame;
    
    //  设置 source 大小
    _source.frame = _weiBoFrame.sourceFrame;
    
    //  设置  content  大小
    _content.frame = _weiBoFrame.contentFrame;
    
    //  设置 image  大小
    _image.frame = _weiBoFrame.imageFrame;
}

@end
