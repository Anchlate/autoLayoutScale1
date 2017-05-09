//
//  ViewController.m
//  autoLayoutScall
//
//  Created by Qianrun on 16/8/12.
//  Copyright © 2016年 qianrun. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

/**
 *  you will get the screen width when you use the SCREEN_WIDTH
 *
 */
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width

/**
 *  you will get the screen height when you user the SCREEN_HEIGHT
 *
 */
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height


#define kScalX ((SCREEN_WIDTH != 375) ? (SCREEN_WIDTH / 375) : 1.0)
#define kScalY ((SCREEN_WIDTH != 375) ? (SCREEN_HEIGHT / 667) : 1.0)


#define WEAKSELF(weakSelf) __weak __typeof(&*self)weakSelf = self


@interface ViewController ()

@property (nonatomic, strong) UIView *headView;
@property (strong, nonatomic) IBOutlet UILabel *ALabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"......xscal:%f", kScalX);
    NSLog(@"......yscal:%f", kScalY);
    NSLog(@"..........alabel:%@", self.ALabel.font);
    NSLog(@"......albel frame:%@", NSStringFromCGRect(self.ALabel.frame));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIView *)headView {
    
    
    if (!_headView) {
        _headView = [[UIView alloc]init];
        _headView.backgroundColor= [UIColor blueColor];
    }
    return _headView;
}

@end
