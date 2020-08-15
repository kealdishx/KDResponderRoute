//
//  UIResponder+KDRoute.m
//  KDResponderRoute
//
//  Created by xuhaonan05 on 2020/8/15.
//  Copyright © 2020 Kealdish. All rights reserved.
//

#import "UIResponder+KDRoute.h"

@implementation UIResponder (KDRoute)

- (void)kd_sendEventWithName:(NSString *)eventName
                   parameter:(nullable NSDictionary *)parameter {
    NSParameterAssert(eventName.length);
    if ([self kd_receiveEventWithName:eventName parameter:parameter]) {
        [[self nextResponder] kd_sendEventWithName:eventName parameter:parameter];
    }
}

- (BOOL)kd_receiveEventWithName:(NSString *)eventName
                      parameter:(nullable NSDictionary *)parameter {
    return YES;
}

@end
