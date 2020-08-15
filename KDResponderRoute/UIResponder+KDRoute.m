//
//  UIResponder+KDRoute.m
//  KDResponderRoute
//
//  Created by xuhaonan05 on 2020/8/15.
//  Copyright © 2020 Kealdish. All rights reserved.
//

#import "UIResponder+KDRoute.h"

@implementation UIResponder (KDRoute)

- (void)kd_routerEventWithName:(NSString *)eventName
                     parameter:(nullable NSDictionary *)parameter {
    [[self nextResponder] kd_routerEventWithName:eventName parameter:parameter];
}

@end
