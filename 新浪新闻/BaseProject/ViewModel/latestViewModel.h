//
//  latestViewModel.h
//  BaseProject
//
//  Created by apple-jd18 on 15/10/31.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseViewModel.h"
#import "NewsNetManager.h"
@interface latestViewModel : BaseViewModel
@property(nonatomic,strong) NSMutableArray *dataArr;

-(id)initWithNewsListType:(NewsListType)type;
@property(nonatomic)NewsListType type;
@property(nonatomic)NSInteger page;

@property(nonatomic)NSInteger rowNumber;
//@property(nonatomic,strong)NSMutableDictionary *picsDic;

-(NSURL *)iconURLForRow:(NSInteger)row;//pic
-(NSString *)titleForRow:(NSInteger)row;
-(NSString *)commentNumberForRow:(NSInteger)row;
-(NSString *)introForRow:(NSInteger)row;
-(NSString *)longTitleForRow:(NSInteger)row;
- (NSString *)IDForRow:(NSInteger)row;
- (NSURL *)videoURLForRow:(NSInteger)row;//视频
-(NSInteger)totalForRow:(NSInteger)row;
-(NSMutableDictionary *)picsForRow:(NSInteger)row;
//头部滚动栏，图片数组
@property(nonatomic,strong)NSArray *headImageURLs;

//刷半，加载更多，加载数据在BaseViewModel




@end
