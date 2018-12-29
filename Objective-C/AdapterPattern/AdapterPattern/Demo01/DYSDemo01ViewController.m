//
//  DYSDemo01ViewController.m
//  AdapterPattern
//
//  Created by 丁玉松 on 2018/12/24.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "DYSDemo01ViewController.h"
#import "DYSAdapter.h"
#import "DYSCourse.h"
#import "DYSPeople.h"

@interface DYSDemo01ViewController ()

@end

@implementation DYSDemo01ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    DYSPeople *people1 = [[DYSPeople alloc] initWithXingMing:@"小张"];
    DYSPeople *people2 = [[DYSPeople alloc] initWithXingMing:@"小李"];
    DYSPeople *people3 = [[DYSPeople alloc] initWithXingMing:@"小王"];

    DYSAdapter *adapterPeople1 = [[DYSAdapter alloc] initWithPeople:people1];
    DYSAdapter *adapterPeople2 = [[DYSAdapter alloc] initWithPeople:people2];
    DYSAdapter *adapterPeople3 = [[DYSAdapter alloc] initWithPeople:people3];

    DYSCourse *course = [DYSCourse new];
    [course addStaff:adapterPeople1];
    [course addStaff:adapterPeople2];
    [course addStaff:adapterPeople3];

    [course introduceSelfOneByOne];
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
