//
//  ViewController.m
//  test-python-embeded
//
//  Created by Zoe IAMZOE.io on 2/14/18.
//  Copyright © 2018 Zoe IAMZOE.io. All rights reserved.
//

#import "ViewController.h"
#import "Python.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Py_SetProgramName((char*)[[[[NSBundle mainBundle] bundlePath] stringByAppendingString:@"/"] UTF8String]);
    Py_Initialize();
    PyRun_SimpleString("print 'Hello world!'");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
