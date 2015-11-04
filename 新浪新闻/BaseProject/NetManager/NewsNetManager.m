//
//  NewsNetManager.m
//  BaseProject
//
//  Created by tangbinbin on 15/10/30.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "NewsNetManager.h"

@implementation NewsNetManager
+(id)getNewsListType:(NewsListType)type page:(NSInteger)page completionHandle:(void (^)(NewsModel *, NSError *))completionHandle
{
        //头条
   //体育
      //财经
        //汽车
    //科技
        //搞笑
         //广东
       //社会
    NSString *path = nil;
    switch (type) {
        case NewsListTypeNews_toutiao:
            path = [NSString stringWithFormat:@"http://api.sina.cn/sinago/list.json?uid=b36916db1fa62eeb&loading_ad_timestamp=0&platfrom_version=4.2.2&wm=b207&oldchwm=14030_0001&imei=865453023618809&from=6048295012&connection_type=2&chwm=14030_0001&AndroidID=1f0c56c41bf5ffca56d41eb9d5ae1275&v=1&s=20&IMEI=8721d5e53c6fbdc84ed714e90c436fc9&p=%@&user_uid=3262231444&MAC=6ec01b879759e71594f4d29d4bb04ae5&channel=news_toutiao",@(page)];
//            NSLog(@"path: %@",@(1));
            break;
            
        case NewsListTypeNews_sports:
            path = [NSString stringWithFormat:@"http://api.sina.cn/sinago/list.json?uid=b36916db1fa62eeb&loading_ad_timestamp=0&platfrom_version=4.2.2&wm=b207&oldchwm=14030_0001&imei=865453023618809&from=6048295012&connection_type=2&chwm=14030_0001&AndroidID=1f0c56c41bf5ffca56d41eb9d5ae1275&v=1&s=20&IMEI=8721d5e53c6fbdc84ed714e90c436fc9&p=%@&user_uid=3262231444&MAC=6ec01b879759e71594f4d29d4bb04ae5&channel=news_sports",@(page)];
            break;
            
        case NewsListTypeNews_finance:
            path = [NSString stringWithFormat:@"http://api.sina.cn/sinago/list.json?uid=b36916db1fa62eeb&loading_ad_timestamp=0&platfrom_version=4.2.2&wm=b207&oldchwm=14030_0001&imei=865453023618809&from=6048295012&connection_type=2&chwm=14030_0001&AndroidID=1f0c56c41bf5ffca56d41eb9d5ae1275&v=1&s=20&IMEI=8721d5e53c6fbdc84ed714e90c436fc9&p=%@&user_uid=3262231444&MAC=6ec01b879759e71594f4d29d4bb04ae5&channel=news_finance",@(page)];
            break;
            
        case NewsListTypeNews_auto:
            path = [NSString stringWithFormat:@"http://api.sina.cn/sinago/list.json?uid=b36916db1fa62eeb&loading_ad_timestamp=0&platfrom_version=4.2.2&wm=b207&oldchwm=14030_0001&imei=865453023618809&from=6048295012&connection_type=2&chwm=14030_0001&AndroidID=1f0c56c41bf5ffca56d41eb9d5ae1275&v=1&s=20&IMEI=8721d5e53c6fbdc84ed714e90c436fc9&p=%@&user_uid=3262231444&MAC=6ec01b879759e71594f4d29d4bb04ae5&channel=news_auto",@(page)];
            break;
            
        case  NewsListTypeNews_tech:
            path = [NSString stringWithFormat:@"http://api.sina.cn/sinago/list.json?uid=b36916db1fa62eeb&loading_ad_timestamp=0&platfrom_version=4.2.2&wm=b207&oldchwm=14030_0001&imei=865453023618809&from=6048295012&connection_type=2&chwm=14030_0001&AndroidID=1f0c56c41bf5ffca56d41eb9d5ae1275&v=1&s=20&IMEI=8721d5e53c6fbdc84ed714e90c436fc9&p=%@&user_uid=3262231444&MAC=6ec01b879759e71594f4d29d4bb04ae5&channel=news_tech",@(page)];
            break;
            
        case NewsListTypeNews_funny:
            path = [NSString stringWithFormat:@"http://api.sina.cn/sinago/list.json?uid=b36916db1fa62eeb&loading_ad_timestamp=0&platfrom_version=4.2.2&wm=b207&oldchwm=14030_0001&imei=865453023618809&from=6048295012&connection_type=2&chwm=14030_0001&AndroidID=1f0c56c41bf5ffca56d41eb9d5ae1275&v=1&s=20&IMEI=8721d5e53c6fbdc84ed714e90c436fc9&p=%@&user_uid=3262231444&MAC=6ec01b879759e71594f4d29d4bb04ae5&channel=news_funny",@(page)];
            break;
            
        case NewsListTypeLocal_guangdong:
            path = [NSString stringWithFormat:@"http://api.sina.cn/sinago/list.json?uid=b36916db1fa62eeb&loading_ad_timestamp=0&platfrom_version=4.2.2&wm=b207&oldchwm=14030_0001&imei=865453023618809&from=6048295012&connection_type=2&chwm=14030_0001&AndroidID=1f0c56c41bf5ffca56d41eb9d5ae1275&v=1&s=20&IMEI=8721d5e53c6fbdc84ed714e90c436fc9&p=%@&user_uid=3262231444&MAC=6ec01b879759e71594f4d29d4bb04ae5&channel=local_guangdong",@(page)];
            break;
            
        case  NewsListTypeNews_sh:
            path = [NSString stringWithFormat:@"http://api.sina.cn/sinago/list.json?uid=b36916db1fa62eeb&loading_ad_timestamp=0&platfrom_version=4.2.2&wm=b207&oldchwm=14030_0001&imei=865453023618809&from=6048295012&connection_type=2&chwm=14030_0001&AndroidID=1f0c56c41bf5ffca56d41eb9d5ae1275&v=1&s=20&IMEI=8721d5e53c6fbdc84ed714e90c436fc9&p=%@&user_uid=3262231444&MAC=6ec01b879759e71594f4d29d4bb04ae5&channel=news_sh",@(page)];
            break;
            
            
        default:
            break;
    }
    //只要请求下来的数据公用一个解析类，就可以合写
    return [self GET:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
        completionHandle([NewsModel objectWithKeyValues:responseObj], error);
    }];
    
}
@end
