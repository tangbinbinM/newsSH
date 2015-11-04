//
//  AppDelegate.m
//  BaseProject
//
//  Created by jiyingxin on 15/10/21.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "AppDelegate.h"
#import "AppDelegate+Category.h"
#import "NewsNetManager.h"
#import "NewsModel.h"
@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self initializeWithApplication:application];

    /*网络请求测试*/
    
    [NewsNetManager getNewsListType:NewsListTypeNews_toutiao page:1 completionHandle:^(NewsModel *model, NSError *error) {
        
        DDLogVerbose(@"");
    }];
    
    
    return YES;
}

@end
