//
//  APLAttachmentsViewController.m
//  DynamicsCatalogIOSDemo
//
//  Created by 喻飞 on 15/4/10.
//  Copyright (c) 2015年 yuf. All rights reserved.
//

#import "APLAttachmentsViewController.h"

@interface APLAttachmentsViewController ()
@property (nonatomic, weak) IBOutlet UIView *square1;
//! The view that displays the attachment point on square1.
@property (nonatomic, weak) IBOutlet UIImageView *square1AttachmentView;
//! The view that the user drags to move square1.
@property (nonatomic, weak) IBOutlet UIImageView *attachmentView;
@property (nonatomic, strong) UIDynamicAnimator *animator;
@property (nonatomic, strong) UIAttachmentBehavior *attachmentBehavior;
@end

@implementation APLAttachmentsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIDynamicAnimator *animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    
    UICollisionBehavior *collisionBehavior = [[UICollisionBehavior alloc] initWithItems:@[self.square1]];
    //创建碰撞边界 self.view
    collisionBehavior.translatesReferenceBoundsIntoBoundary = YES;
    [animator addBehavior:collisionBehavior];
    
    CGPoint squareCenterPoint = CGPointMake(self.square1.center.x, self.square1.center.y - 110);
    UIOffset attachmentPoint = UIOffsetMake(-25.0, -25.0);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
