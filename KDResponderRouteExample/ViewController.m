//
//  ViewController.m
//  KDResponderRouteExample
//
//  Created by xuhaonan05 on 2020/8/15.
//  Copyright © 2020 Kealdish. All rights reserved.
//

@import KDResponderRoute;
#import "ViewController.h"
#import "KDTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (BOOL)kd_receiveEventWithName:(NSString *)eventName parameter:(NSDictionary *)parameter {
    NSLog(@"eventName: %@, parameter: %@", eventName, parameter);
    return NO;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [[KDTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"KDTableViewCell"];
}

@end
