//
//  ZADog.h
//  ZADogDelegate
//
//  Created by 纵昂 on 2021/4/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ZADogDelegate <NSObject>

@end

@interface ZADog : NSObject
//weak修饰代理
@property (nonatomic, weak) id<ZADogDelegate>delegate;

@end

NS_ASSUME_NONNULL_END
