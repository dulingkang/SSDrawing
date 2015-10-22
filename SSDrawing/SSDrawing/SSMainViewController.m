//
//  SSMainViewController.m
//  SSDrawning
//
//  Created by ShawnDu on 15/10/21.
//  Copyright © 2015年 ShawnDu. All rights reserved.
//

#import "SSMainViewController.h"
#import "WDCanvas.h"

@interface SSMainViewController ()

@property (strong, nonatomic) WDCanvas *canvas;
@end

@implementation SSMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _canvas = [[WDCanvas alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:_canvas];
    // Do any additional setup after loading the view.
}

@end
