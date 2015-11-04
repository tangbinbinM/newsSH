//
//  NewsModel.h
//  BaseProject
//
//  Created by apple-jd18 on 15/10/30.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseModel.h"
@class NewsDataModel,NewsDataListCommentCountInfoModel,NewsDataListVideoInfoModel,NewsDataListPicsModel;
@interface NewsModel : BaseModel
@property (nonatomic, assign) double status;//壮态
@property (nonatomic, strong) NewsDataModel *data;
@end

@interface NewsDataModel : BaseModel
@property (nonatomic, strong) NSString *isIntro;//
@property (nonatomic, strong) NSArray *list;
@end

@interface NewsDataListModel : BaseModel
@property (nonatomic, assign) BOOL isFocus;//焦点
//@property (nonatomic, strong) NSNumber *ID;//
@property (nonatomic, strong) NSString *ID;
@property (nonatomic, strong) NSString *comments;//
@property (nonatomic, strong) NSString *category;//
@property (nonatomic, strong) NSString *kpic;//
@property (nonatomic, strong) NSString *intro;//
@property (nonatomic, strong) NSString *feedShowStyle;//网格
@property (nonatomic, strong) NSString *link;//
@property (nonatomic, assign) double pubDate;//
@property (nonatomic, strong) NSString *source;//
@property (nonatomic, strong) NSString *pic;//
@property (nonatomic, strong) NSString *title;//
@property (nonatomic, assign) NSNumber *comment;//评论数//
@property (nonatomic, strong) NewsDataListCommentCountInfoModel *commentCountInfo;//
@property (nonatomic, strong) NewsDataListVideoInfoModel *videoInfo;
@property (nonatomic, strong) NSString *longTitle;//
@property (nonatomic, strong) NSString *alt;//
@property (nonatomic, strong) NewsDataListPicsModel *pics;//
@property (nonatomic, strong) NSArray *monitor;
@property (nonatomic, strong) NSArray *pv;//推广
@end

@interface NewsDataListCommentCountInfoModel : BaseModel
@property (nonatomic, assign) double commentStatus;
@property (nonatomic, assign) double qreply;
@property (nonatomic, assign) double show;
@property (nonatomic, assign) double dispraise;
@property (nonatomic, assign) double total;
@property (nonatomic, assign) double praise;
@end

@interface NewsDataListVideoInfoModel : BaseModel
@property (nonatomic, strong) NSString *pic;
@property (nonatomic, strong) NSString *runtime;
@property (nonatomic, strong) NSString *kpic;
@property (nonatomic, assign) double playnumber;
@property (nonatomic, strong) NSString *videoId;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, assign) BOOL widtwidth;
@property (nonatomic, strong) NSString *url;
@end

@interface NewsDataListPicsModel : BaseModel
//@property (nonatomic, assign) double total;
@property(nonatomic) NSInteger total;
@property (nonatomic, strong) NSArray *list;
@end