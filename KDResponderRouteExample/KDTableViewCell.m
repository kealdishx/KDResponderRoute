//
//  KDTableViewCell.m
//  KDResponderRouteExample
//
//  Created by xuhaonan05 on 2020/8/15.
//  Copyright © 2020 Kealdish. All rights reserved.
//

@import KDResponderRoute;
#import "KDTableViewCell.h"

@interface KDTableViewCell()

@property (nonatomic, strong) UIButton *btn1;

@property (nonatomic, strong) UIButton *btn2;

@end

@implementation KDTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    [self.contentView addSubview:self.btn1];
    [self.contentView addSubview:self.btn2];
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    [self.contentView addSubview:self.btn1];
    [self.contentView addSubview:self.btn2];
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    CGFloat height = self.bounds.size.height;
    self.btn1.frame = CGRectMake(60, (height - 30) * 0.5, 60, 30);
    self.btn2.frame = CGRectMake(160, (height - 30) * 0.5, 60, 30);
}

- (void)btn1Event {
    [self kd_sendEventWithName:@"btn1" parameter:@{
        @"key1": @"value1",
        @"key2": @"value2"
    }];
}

- (void)btn2Event {
    [self kd_sendEventWithName:@"btn2" parameter:@{
        @"key3": @"value1",
        @"key4": @"value2"
    }];
}

- (UIButton *)btn1 {
    if (!_btn1) {
        _btn1 = [UIButton buttonWithType:UIButtonTypeSystem];
        [_btn1 setTitle:@"btn1" forState:UIControlStateNormal];
        [_btn1 addTarget:self action:@selector(btn1Event) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn1;
}

- (UIButton *)btn2 {
    if (!_btn2) {
        _btn2 = [UIButton buttonWithType:UIButtonTypeSystem];
        [_btn2 setTitle:@"btn2" forState:UIControlStateNormal];
        [_btn2 addTarget:self action:@selector(btn2Event) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn2;
}

@end
