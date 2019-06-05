//
//  DJModuleAViewController.m
//  Pods-testModuleA_Example
//
//  Created by DJAPPLE3-ysy on 2019/6/4.
//

#import "DJModuleAViewController.h"

@interface DJModuleAViewController ()
@property (nonatomic, strong)UIButton   *statusBtn;
@end

@implementation DJModuleAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.statusBtn];
}
-(void)viewWillLayoutSubviews
{
    self.statusBtn.frame = CGRectMake(0, self.view.frame.size.height - 45, self.view.frame.size.width, 45);
}
- (UIButton *)statusBtn
{
    if (_statusBtn == nil) {
        _statusBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_statusBtn setTitle:@"哈哈跳转" forState:0];
        [_statusBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_statusBtn setBackgroundColor:[UIColor redColor]];
        [_statusBtn addTarget:self action:@selector(didClickButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _statusBtn;
}
-(void)didClickButton:(UIButton *)sender
{
    //通过target  action  跳转页面 传值
}
@end
