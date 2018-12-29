//
//  DYSStudent.m
//  AdapterPattern
//
//  Created by DingYusong on 2018/12/29.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "DYSStudent.h"

@implementation DYSStudent

@synthesize name;

-(void)speakName {
    NSLog(@"我叫：%@",self.name);
}

@end
