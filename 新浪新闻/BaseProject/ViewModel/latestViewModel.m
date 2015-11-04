//
//  latestViewModel.m
//  BaseProject
//
//  Created by apple-jd18 on 15/10/31.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "latestViewModel.h"

@implementation latestViewModel
//初始化
-(id)initWithNewsListType:(NewsListType)type{
    if (self = [super init]) {
        _type = type;
    }
    return self;
}
//数组长度
-(NSInteger)rowNumber{
    return self.dataArr.count;
}



//懒加载
- (NSMutableArray *)dataArr{
    if (!_dataArr) {
        _dataArr=[NSMutableArray new];
    }
    return _dataArr;
}
-(NewsDataListModel *)newsListmodelForRow:(NSInteger)row{
    return self.dataArr[row];
}
-(NSString *)titleForRow:(NSInteger)row{
    return [self newsListmodelForRow:row].title;
}
-(NSString *)longTitleForRow:(NSInteger)row{
    return [self newsListmodelForRow:row].longTitle;
}
-(NSString *)commentNumberForRow:(NSInteger)row{
    return [[self newsListmodelForRow:row].comment.stringValue stringByAppendingString:@"评论"];
}
-(NSInteger)totalForRow:(NSInteger)row{
    return [self newsListmodelForRow:row].pics.total;
}
-(NSString *)IDForRow:(NSInteger)row{
    return [self newsListmodelForRow:row].ID;
}
-(NSString *)introForRow:(NSInteger)row{
    return [self newsListmodelForRow:row].intro;
}
//-(NSNumber *)picsForRow:(NSInteger)row{
//    return [self newsListmodelForRow:row].pics.total;
//}
//相片
-(NSURL *)iconURLForRow:(NSInteger)row{
    return [NSURL URLWithString:[self newsListmodelForRow:row].pic];
}

- (NSURL *)videoURLForRow:(NSInteger)row{
//    NSString *path=[self newsListmodelForRow:row].videoInfo.url;
    
    return [NSURL URLWithString:[self newsListmodelForRow:row].link];
}

-(void)getDataCompleteHandle:(void(^)(NSError *))complete{
    [NewsNetManager getNewsListType:_type page:_page completionHandle:^(NewsModel *model, NSError *error) {
        if (_page == 1) {
            [self.dataArr removeAllObjects];

        }
        [self.dataArr addObjectsFromArray:model.data.list];
        NSLog(@"%@",_dataArr);
//        [self.picsArr addObjectsFromArray:model.data.list.];
//        NSLog(@"dataArr%@ ",self.dataArr);
        NSMutableArray *imgArr = [NSMutableArray new];
        for (NewsDataListModel *obj in model.data.list) {
            NSURL *imageURL = [NSURL URLWithString:obj.kpic];
            [imgArr addObject:imageURL];
            
        }
        self.headImageURLs = [imgArr copy];
        complete(error);
    }];
}

-(void)refreshDataCompletionHandle:(CompletionHandle)completionHandle{
    _page = 1;
    [self getDataCompleteHandle:completionHandle];
}
-(void)getMoreDataCompletionHandle:(CompletionHandle)completionHandle{
    //    NewsDataListModel *obj = self.dataArr.lastObject;
    _page +=1;
    [self getDataCompleteHandle:completionHandle];
}

@end
