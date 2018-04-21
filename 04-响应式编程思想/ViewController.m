//
//  ViewController.m
//  04-响应式编程思想
//
//  Created by 超级腕电商 on 2017/10/24.
//  Copyright © 2017年 超级腕电商. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "NSObject+KVO.h"
@interface ViewController ()

@property (nonatomic,strong) Person *p;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Person * p = [[Person alloc] init];
    
    //[p addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:nil];
    [p cyx_addObserver:self forKeyPath:@"name" options:0 context:nil];
    _p = p;
}
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    NSLog(@"%@",_p.name);
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    static int i=0;
    i++;
    _p.name = [NSString stringWithFormat:@"%d",i];
    //_p -> _name = [NSString stringWithFormat:@"%d",i];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
