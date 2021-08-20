//
//  GetSomething.m
//  SDK-Sample
//
//  Created by Echo on 2021/8/19.
//

#import "GetSomething.h"

@implementation GetSomething

+ (void)getSomething {
    
    NSLog(@"打印点什么。。。");
    
}

+ (UIImage *)getBundleImage {
    
    // 获取bundle
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Resource" ofType:@"bundle"];
    NSBundle *resourceBundle = [NSBundle bundleWithPath:bundlePath];
    
    //获取图片的两种方式
//    return [UIImage imageNamed:@"Resource.bundle/ic_anchor_unfollow"];
    return [UIImage imageWithContentsOfFile:[resourceBundle pathForResource:@"ic_anchor_unfollow" ofType:@"png"]];
    
}

@end
