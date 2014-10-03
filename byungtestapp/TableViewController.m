//
//  TableViewController.m
//  byungtestapp
//
//  Created by Interns on 10/3/14.
//  Copyright (c) 2014 Interns. All rights reserved.
//

#import "TableViewController.h"
#import "PersonQuery.h"
#import "Person.h"
#import "TableViewCell.h"

@interface TableViewController ()

@end

@implementation TableViewController
{
    NSArray *persons;
    PersonQuery *query;
    UINib *cellNib;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    //persons = [[NSArray alloc]init];
    query = [[PersonQuery alloc] init];
    [query getAllUsers:^void(NSArray *array1) {
        persons = array1;
    }];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"personCell"];
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 66;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [persons count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //tableview <- ? Content Size, Frame, Position, (ScrollView)
    //indexPath <- NSSet row, section
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"personCell"];
                                                                           
   if(cell == nil)
   {
       //[tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"personCell"];
       //[tableView dequeueReusableCellWithIdentifier:@"personCell"];
   }
    //UITableViewCell *cell = [[UITableViewCell alloc] init];
    return cell;
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *anotherCell = (TableViewCell*)cell;
    Person *p = [persons objectAtIndex:indexPath.row];
     
    anotherCell.firstNameLabel.text = @"First Name:";
    anotherCell.lastNameLabel.text = @"Last Name:";
    anotherCell.firstNameStrLabel.text = p.firstName;
    anotherCell.lastNameStrLabel.text = p.lastName;
    [anotherCell.colorView setBackgroundColor:p.favoriteColor];
    
    //cell = anotherCell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
