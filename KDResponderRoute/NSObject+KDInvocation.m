//
//  NSObject+KDInvocation.m
//  KDResponderRoute
//
//  Created by xuhaonan05 on 2020/8/15.
//  Copyright © 2020 Kealdish. All rights reserved.
//

#import "NSObject+KDInvocation.h"

@implementation NSObject (KDInvocation)

- (NSInvocation *)createInvocationWithSelector:(SEL)aSelector {
    NSMethodSignature *signature = [[self class] instanceMethodSignatureForSelector:aSelector];
    
    if (!signature) {
        NSString*info = [NSString stringWithFormat:@"-[%@ %@]:unrecognized selector sent to instance",[self class],NSStringFromSelector(aSelector)];
        @throw [[NSException alloc] initWithName:@"unrecognized selector" reason:info userInfo:nil];
        return nil;
    }
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
    invocation.target = self;
    invocation.selector = aSelector;
    return invocation;
}

@end
