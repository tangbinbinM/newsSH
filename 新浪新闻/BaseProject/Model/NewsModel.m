//
//  NewsModel.m
//  BaseProject
//
//  Created by apple-jd18 on 15/10/30.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "NewsModel.h"

@implementation NewsModel

@end

@implementation NewsDataModel
+(NSDictionary *)objectClassInArray{
    return @{@"list":[NewsDataListModel class]};
}
+(NSDictionary *)replacedKeyFromPropertyName{
    return @{@"isIntro":@"is_intro"};
}
@end

@implementation NewsDataListModel
+ (NSDictionary *)replacedKeyFromPropertyName{
    return @{
             @"ID":@"id",
             @"isFocus":@"is_focus",
             @"longTitle":@"long_title",
             @"commentCountInfo":@"comment_count_info",@"videoInfo":@"video_info"};
}
@end

@implementation NewsDataListCommentCountInfoModel

@end

@implementation NewsDataListPicsModel
+ (NSDictionary *)objectClassInArray{
    // key 需要填 属性, 表示某个数组属性中的元素对应的特殊解析类
    return @{@"list":[NewsDataListModel class]};
}
@end

@implementation NewsDataListVideoInfoModel
+(NSDictionary *)replacedKeyFromPropertyName{
    return @{@"videoId":@"video_id"};
}
@end