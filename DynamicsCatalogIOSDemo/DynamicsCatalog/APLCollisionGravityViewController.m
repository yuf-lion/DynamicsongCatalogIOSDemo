//
//  APLCollisionGravityViewController.m
//  DynamicsCatalogIOSDemo
//
//  Created by 喻飞 on 15/4/10.
//  Copyright (c) 2015年 yuf. All rights reserved.
//

#import "APLCollisionGravityViewController.h"

@interface APLCollisionGravityViewController ()<UICollisionBehaviorDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *square;
@property (nonatomic, strong) UIDynamicAnimator *animator;
@end

@implementation APLCollisionGravityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //使方形的图片视图的图片颜色能够被改变
    self.square.image = [self.square.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    self.square.tintColor = [UIColor darkGrayColor];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    UIDynamicAnimator *animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    UIGravityBehavior *gravity = [[UIGravityBehavior alloc] initWithItems:@[self.square]];
    [animator addBehavior:gravity];
    UICollisionBehavior *collisionBehavior = [[UICollisionBehavior alloc] initWithItems:@[self.square]];
    //创建动态动画的碰撞边界，参照 self.view
    collisionBehavior.translatesReferenceBoundsIntoBoundary = YES;
    collisionBehavior.collisionDelegate = self;
    [animator addBehavior:collisionBehavior];
    
    self.animator = animator;
}
//当方形视图接触碰撞边界是触发方法，当前条件为接触self.view底部
- (void)collisionBehavior:(UICollisionBehavior*)behavior beganContactForItem:(id<UIDynamicItem>)item withBoundaryIdentifier:(id<NSCopying>)identifier atPoint:(CGPoint)p
{
    // Lighten the tint color when the view is in contact with a boundary.
    [(UIView*)item setTintColor:[UIColor lightGrayColor]];
}
//当方形视图碰撞结束弹起在边界时触发
- (void)collisionBehavior:(UICollisionBehavior*)behavior endedContactForItem:(id<UIDynamicItem>)item withBoundaryIdentifier:(id<NSCopying>)identifier
{
    // Restore the default color when ending a contcact.
    [(UIView*)item setTintColor:[UIColor darkGrayColor]];
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
