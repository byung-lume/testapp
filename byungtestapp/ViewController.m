//
//  ViewController.m
//  byungtestapp
//
//  Created by Interns on 10/2/14.
//  Copyright (c) 2014 Interns. All rights reserved.
//

#import "ViewController.h"
#import "PersonQuery.h"
#import "Person.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *screen1Label;
@property (weak, nonatomic) IBOutlet UIButton *toScreen2Button;
@property (weak, nonatomic) IBOutlet UILabel *screen2Label;
@property (weak, nonatomic) IBOutlet UIButton *toScreen1Button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.screen1Label.text = @"Screen 1";
    [self.toScreen2Button setTitle:@"To Screen 2" forState: UIControlStateNormal];
    self.screen2Label.text = @"Screen 2";
    [self.toScreen1Button setTitle:@"To Screen 1" forState: UIControlStateNormal];
    NSString *str = [[NSString alloc] init];
    PersonQuery *query = [[PersonQuery alloc] init];
    Person *p = nil;
    [query getAllUsers:^void(NSArray *array) {
        __block Person *p = array[0];
    }];
    self.label.text = p.firstName + @" " + p.lastName;}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)unWind:(UIStoryboardSegue *)segue
{
    //segue.sourceViewController;
}

@end
