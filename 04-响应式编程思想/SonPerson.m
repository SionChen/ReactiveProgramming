//
//  SonPerson.m
//  04-响应式编程思想
//
//  Created by 超级腕电商 on 2017/10/24.
//  Copyright © 2017年 超级腕电商. All rights reserved.
//

#import "SonPerson.h"
#import <objc/message.h>
extern NSString * const cyx_key;
@implementation SonPerson

-(void)setName:(NSString *)name{
    [super setName:name];
    
    NSObject * observer = objc_getAssociatedObject(self, cyx_key);
    
    [observer observeValueForKeyPath:@"name" ofObject:self change:nil context:nil];
}
@end
