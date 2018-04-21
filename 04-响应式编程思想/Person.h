//
//  Person.h
//  04-响应式编程思想
//
//  Created by 超级腕电商 on 2017/10/24.
//  Copyright © 2017年 超级腕电商. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @public
    NSString * _name;
}

@property (nonatomic,copy) NSString *name;
@end
