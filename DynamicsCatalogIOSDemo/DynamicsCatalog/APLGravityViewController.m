//
//  APLGravityViewController.m
//  DynamicsCatalogIOSDemo
//
//  Created by 喻飞 on 15/4/10.
//  Copyright (c) 2015年 yuf. All rights reserved.
//

#import "APLGravityViewController.h"

@interface APLGravityViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *square;
@property (nonatomic, strong) UIDynamicAnimator *animator;
@end

@implementation APLGravityViewController

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    UIDynamicAnimator *animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    UIGravityBehavior *gravityBeahvior = [[UIGravityBehavior alloc] initWithItems:@[self.square]];
    [animator addBehavior:gravityBeahvior];
    self.animator = animator;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
