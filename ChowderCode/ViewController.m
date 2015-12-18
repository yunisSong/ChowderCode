//
//  ViewController.m
//  ChowderCode
//
//  Created by Yunis on 15/12/18.
//  Copyright © 2015年 yunis. All rights reserved.
//

#import "ViewController.h"
#import "LayerTextView.h"
@interface ViewController ()
@property(nonatomic,strong)UIImageView *bgView;
@end
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
@implementation ViewController

#pragma mark - Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    //加载页面
    
//    [self.view addSubview:self.bgView];
//    self.bgView.frame = self.view.bounds;
    
//    LayerTextView *t = [[LayerTextView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
//    t.center  = self.view.center;
//    t.backgroundColor = RGBA(20, 20, 20, .8);
//
//    [self.view addSubview:t];
    
    
    UILabel *test = ({
        UILabel *textLable               = [[UILabel alloc] initWithFrame:CGRectZero];
        textLable.font                   = [UIFont systemFontOfSize:18];
        textLable.userInteractionEnabled = YES;
        textLable.numberOfLines          = 0;// 不可少Label属性之一
        textLable.lineBreakMode          = NSLineBreakByCharWrapping;// 不可少Label
        textLable.textAlignment          = NSTextAlignmentLeft;
        textLable;
    });
    
    NSMutableAttributedString * attributed=[[NSMutableAttributedString alloc] init];
    NSDictionary *dic = @{NSForegroundColorAttributeName:[UIColor clearColor],
                          NSFontAttributeName:[UIFont systemFontOfSize:40]};
    NSMutableAttributedString *temp = [[NSMutableAttributedString alloc] initWithString:@"彦祖没有我帅" attributes:dic];
    [attributed appendAttributedString:temp];
    test.attributedText = attributed;
    test.backgroundColor = RGBA(20, 20, 20, .5);
    test.frame = CGRectMake(0, 0, 200, 200);
    test.center = self.view.center;
    [self.view addSubview:test];
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    //布局
}
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    //监听事件
}
- (void)dealloc
{
    
}
#pragma mark - Public Method
//外部方法

#pragma mark - Private Method
//本类方法


- (NSMutableAttributedString *)creatAttributedStringWithText:(NSString *)text font:(NSString *)font color:(UIColor *)color
{
    NSDictionary *dic = @{NSForegroundColorAttributeName:color,
                          NSFontAttributeName:[UIFont systemFontOfSize:[font floatValue]]};
    NSMutableAttributedString *temp = [[NSMutableAttributedString alloc] initWithString:text attributes:dic];
    return temp;
}
#pragma mark - Delegate
//代理方法

#pragma mark - Event Response
//点击响应事件



#pragma mark - getters and setters
//初始化页面
- (UIImageView *)bgView{
    if (_bgView == nil) {
        _bgView = ({
            UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1"]];
            imageView.userInteractionEnabled = YES;
  
            imageView;
        });
    }
    
    return _bgView;
}
@end
