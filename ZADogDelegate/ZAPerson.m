//
//  ZAPerson.m
//  ZADogDelegate
//
//  Created by 纵昂 on 2021/4/25.
//

#import "ZAPerson.h"
#import "ZADog.h"

@interface ZAPerson()<ZADogDelegate>
/** 强引用dog*/
@property (nonatomic, strong) ZADog *dog;

@end

@implementation ZAPerson


- (instancetype)init{
    self = [super init];
    if (self) {
        // 实例化dog
        self.dog = [[ZADog alloc] init];
        // dog的delegate引用self,self的retainCount，取决于delegate修饰，weak：retainCount不变，strong：retainCount + 1
        self.dog.delegate = self;

    }
    return self;
}

- (void)dealloc{
    NSLog(@"ZAPerson----销毁");
}

@end
