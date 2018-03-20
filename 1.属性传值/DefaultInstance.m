//
//  DefaultInstance.m
//  1.属性传值
//
//  Created by PatrickY on 2017/11/24.
//  Copyright © 2017年 PatrickY. All rights reserved.
//

#import "DefaultInstance.h"

@implementation DefaultInstance

+(instancetype)SharedInstance {
    
    static DefaultInstance *sharedVC = nil;
    
    if (sharedVC == nil) {
        
        sharedVC = [[DefaultInstance alloc] init];
        
    }
    
    return sharedVC;
    
}

@end
