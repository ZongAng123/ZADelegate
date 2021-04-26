//
//  ViewController.m
//  ZADogDelegate
//
//  Created by 纵昂 on 2021/4/25.
//  iOS 代理为啥要用weak修饰? (刨根问底一)
//

#import "ViewController.h"
#import "ZAPerson.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
/*
 在开发中我们经常使用代理，或自己写个代理，而代理属性都用weak(assign)修饰，看过有些开发者用strong(retain)，但并没发现有何不妥，也不清楚weak(assign)与strong(retain)修饰有何区别
 weak:指明该对象并不负责保持delegate这个对象，delegate这个对象的销毁由外部控制
 @property (nonatomic, weak) id<HSDogDelegate>delegate;
 
 strong：该对象强引用delegate，外界不能销毁delegate对象，会导致循环引用(Retain Cycles)
 @property (nonatomic, strong) id<HSDogDelegate>delegate;
 这篇文章讲得不错，学习了 https://www.jianshu.com/p/398472616435
 
 */
    
#pragma mark - 实例化person, self对person弱引用，person的retainCount不变
    ZAPerson *person = [[ZAPerson alloc] init];
    
}


@end
