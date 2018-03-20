//
//  DefaultInstance.h
//  1.属性传值
//
//  Created by PatrickY on 2017/11/24.
//  Copyright © 2017年 PatrickY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DefaultInstance : NSObject

+(instancetype)SharedInstance;

@property(nonatomic, strong) NSString *str;

@end
