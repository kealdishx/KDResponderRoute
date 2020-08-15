//
//  NSObject+KDInvocation.h
//  KDResponderRoute
//
//  Created by xuhaonan05 on 2020/8/15.
//  Copyright © 2020 Kealdish. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (KDInvocation)

- (NSInvocation *)createInvocationWithSelector:(SEL)aSelector;

@end

NS_ASSUME_NONNULL_END
