//
//  ViewController.m
//  FlashingText
//
//  Created by Three Project on 28/4/2022.
//

#import "ViewController.h"
#import "CLHaloLabel.h"

@interface ViewController ()

@property (strong,nonatomic) CLHaloLabel *flashingTextL;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    self.flashingTextL = [[CLHaloLabel alloc]initWithFrame:CGRectMake(100, 100, 200, 50)];
    
    self.flashingTextL.textColor = [UIColor whiteColor];
    
    self.flashingTextL.font = [UIFont systemFontOfSize:30];
    
    self.flashingTextL.textAlignment = NSTextAlignmentCenter;
    
    self.flashingTextL.text = @"开机解锁";
            
    self.flashingTextL.haloColor = [UIColor blackColor];

    self.flashingTextL.animated = YES;
    
    [self.view addSubview:self.flashingTextL];
    
}


// 停止动画就直接修改属性
-(void)stopAnimal
{
    self.flashingTextL.animated = NO;
}


@end
