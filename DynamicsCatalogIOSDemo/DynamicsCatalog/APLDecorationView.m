//
//  APLDecorationView.m
//  DynamicsCatalogIOSDemo
//
//  Created by 喻飞 on 15/4/10.
//  Copyright (c) 2015年 yuf. All rights reserved.
//

#import "APLDecorationView.h"

@implementation APLDecorationView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
//| ----------------------------------------------------------------------------
- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"BackgroundTile"]];
    }
    return self;
}
@end
