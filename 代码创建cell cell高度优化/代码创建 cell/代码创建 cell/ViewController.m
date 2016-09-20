//
//  ViewController.m
//  代码创建 cell
//
//  Created by 史夏杰 on 16/9/13.
//  Copyright © 2016年 study. All rights reserved.
//

#import "ViewController.h"
#import "WeiBoCell.h"
#import "WeiBoData.h"
#import "WeiBoFrame.h"

@interface ViewController ()
{
    NSMutableArray *_array;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //  初始化数组
    _array  =  [NSMutableArray  array];
    
    //  加载数据
    NSArray  *array = [NSArray  arrayWithContentsOfFile:[[NSBundle   mainBundle] pathForResource:@"weibo.plist" ofType:nil]];
    
    //  设置数据
    for ( NSDictionary  *dict  in  array) {
        WeiBoData  *weiBoData = [WeiBoData  WeiBoDataWithDict:dict];
        WeiBoFrame  *weiBoFrame  =  [[WeiBoFrame  alloc] init];
        weiBoFrame.weiBoData =weiBoData;
        [_array  addObject:weiBoFrame];
//        [_array  addObject: [WeiBoData  WeiBoDataWithDict:dict]];
    }
}

#pragma  mark - 数据源方法
#pragma  mark  设置 row
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  _array.count;
}

#pragma  mark  设置 cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //  cell  标识
    static  NSString  *string = @"P";
    
    //  取出缓存池 cell
    WeiBoCell  *cell = [tableView   dequeueReusableCellWithIdentifier:string];
    
    //   缓存池没有创建 cell
    if (cell == nil) {
        cell = [[WeiBoCell  alloc] initWithStyle:UITableViewCellStyleDefault  reuseIdentifier:string];
    }
    
    //   设置 cell 数据内容
    cell.weiBoFrame = _array[indexPath.row];
//    WeiBoFrame  *f = [[WeiBoFrame  alloc] init];
//    f.weiBoData = _array[indexPath.row];
//    cell.weiBoFrame = f;
    
    return cell;
}

#pragma  mark - 代理方法
#pragma  mark  设置 cell  高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
//    WeiBoFrame *frame = [[WeiBoFrame  alloc] init];
//    frame.weiBoData = _array[indexPath.row];
    
//    return   frame.cellHeight;
    
    return   [_array[indexPath.row]  cellHeight];
}

#pragma  mark  选中 cell
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //  取消背景色
    [tableView  deselectRowAtIndexPath:indexPath animated:YES];
}

@end
