//
//  NSObject+KVO.m
//  04-响应式编程思想
//
//  Created by 超级腕电商 on 2017/10/24.
//  Copyright © 2017年 超级腕电商. All rights reserved.
//

#import "NSObject+KVO.h"
#import "SonPerson.h"
#import <objc/message.h>

NSString * const cyx_key = @"observer";
@implementation NSObject (KVO)
-(void)cyx_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context
{
    
    
    objc_setAssociatedObject(self, (__bridge const void *)(cyx_key), observer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    //修改isa 指针
    object_setClass(self, [SonPerson class]);
}


@end
