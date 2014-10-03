//
//  TableViewCell.h
//  byungtestapp
//
//  Created by Interns on 10/3/14.
//  Copyright (c) 2014 Interns. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *firstNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *lastNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *firstNameStrLabel;
@property (weak, nonatomic) IBOutlet UILabel *lastNameStrLabel;
@property (weak, nonatomic) IBOutlet UIView *colorView;

@end
