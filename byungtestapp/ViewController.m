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


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.screen1Label.text = @"Screen 1";
    [self.toScreen2Button setTitle:@"To Screen 2" forState: UIControlStateNormal];
    
    PersonQuery *query = [[PersonQuery alloc] init];

    __block Person *p = nil;
    
    [query getAllUsers:^void(NSArray *array) {
        p = [array objectAtIndex:0];
    }];
    
    NSMutableString *str = [[NSMutableString alloc] init];
    [str appendString:p.firstName];
    [str appendString:@" "];
    [str appendString:p.lastName];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)copyThis:(Person *)person1 toThisPerson:(Person *)person2
{
    person2.firstName = person1.firstName;
    person2.lastName = person1.lastName;
    person2.favoriteColor = person1.favoriteColor;
    person2.secondFavoriteColor = person1.secondFavoriteColor;
    person2.personalBio = person1.personalBio;
}

-(IBAction)unWind:(UIStoryboardSegue *)segue
{
    //segue.sourceViewController;
}

@end
