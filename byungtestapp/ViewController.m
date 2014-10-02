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
@property (weak, nonatomic) IBOutlet UITableView *personTable;
@property (weak, nonatomic) IBOutlet UIButton *toScreen1Button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.screen1Label.text = @"Screen 1";
    [self.toScreen2Button setTitle:@"To Screen 2" forState: UIControlStateNormal];
    [self.toScreen1Button setTitle:@"To Screen 1" forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)unWind:(UIStoryboardSegue *)segue {
    
}

-(IBAction)populateTable:(id)sender {
    PersonQuery *query = [[PersonQuery alloc] init];
    [self.personTable beginUpdates];
    __block NSArray *array = nil;
    [query getAllUsers:^void(NSArray *array1) {
        array = array1;
    }];
    NSArray *paths = [NSArray arrayWithObject:[NSIndexPath indexPathForRow:[array count]-1 inSection:1]];
    [[self personTable] insertRowsAtIndexPaths:paths withRowAnimation:UITableViewRowAnimationTop];
    [self.personTable insertRowsAtIndexPaths:array  withRowAnimation:UITableViewRowAnimationTop];
    [self.personTable endUpdates];
    NSLog(@"Table Populated!");
}

@end
