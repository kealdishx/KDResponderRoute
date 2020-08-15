//
//  UIResponder+KDRoute.h
//  KDResponderRoute
//
//  Created by xuhaonan05 on 2020/8/15.
//  Copyright © 2020 Kealdish. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIResponder (KDRoute)

- (void)kd_sendEventWithName:(NSString *)eventName
                   parameter:(nullable NSDictionary *)parameter;

- (BOOL)kd_receiveEventWithName:(NSString *)eventName
                      parameter:(nullable NSDictionary *)parameter;

@end

NS_ASSUME_NONNULL_END
