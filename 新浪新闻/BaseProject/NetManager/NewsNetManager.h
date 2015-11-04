//
//  NewsNetManager.h
//  BaseProject
//
//  Created by tangbinbin on 15/10/30.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseNetManager.h"
#import "NewsModel.h"
typedef NS_ENUM(NSUInteger,NewsListType){
    NewsListTypeNews_toutiao,     //头条
    NewsListTypeNews_sports,     //体育
    NewsListTypeNews_finance,     //财经
    NewsListTypeNews_auto,     //汽车
    NewsListTypeNews_tech,   //科技
    NewsListTypeNews_funny,    //搞笑
    NewsListTypeLocal_guangdong,      //广东
    NewsListTypeNews_sh,     //社会

};

@interface NewsNetManager : BaseNetManager
//通过type来区分 请求的地址
//+ (id)getNewsListType:(NewsListType)type lastTitle:(NSString *)title page:(NSInteger)page completionHandle:(void(^)(NewsModel *model, NSError *error))completionHandle;
+(id)getNewsListType:(NewsListType)type page:(NSInteger)page completionHandle:(void(^)(NewsModel *model,NSError *error))completionHandle;
@end
