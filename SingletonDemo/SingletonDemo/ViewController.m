//
//  ViewController.m
//  SingletonDemo
//
//  Created by Nick wu on 2/10/17.
//  Copyright © 2017 Nick. All rights reserved.
//

#import "ViewController.h"
#import "TestSingleton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TestSingleton *singleton1 = [TestSingleton sharedSingleton];
    TestSingleton *singleton2 = [[TestSingleton alloc] init];
    TestSingleton *singleton3 = [singleton1 copy];
    NSLog(@"%p %p %p",singleton1,singleton2,singleton3);
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
