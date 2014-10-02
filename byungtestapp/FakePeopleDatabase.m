//
//  FakePeopleDatabase.m
//  test2323
//
//  Created by Robert Gross on 10/1/14.
//  Copyright (c) 2014 GrossINC. All rights reserved.
//

#import "FakePeopleDatabase.h"
#import "Person.h"

@interface FakePeopleDatabase()
@property (strong, nonatomic) NSMutableArray *people;
@end

@implementation FakePeopleDatabase
-(NSMutableArray *)people
{
    if(!_people)
    {
        _people = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 25; i++)
            [_people addObject:[self createPerson]];
        
    }
    return _people;
}

-(NSArray *)findAllUsersInDataBase
{
    return self.people;
}
-(Person *)createPerson
{
    Person *p = [[Person alloc]init];
    p.firstName = [self getFirstName];
    p.lastName = [self getLastName];
    p.favoriteColor = [self getRandomColor];
    p.secondFavoriteColor= [self getRandomColor];
    p.personalBio = @"This is a test bio to print out on screen when you are testing something only for the sake of testing something";
    return p;
    
    
}
-(NSString *)getFirstName
{
    NSArray *firstNames = @[@"Sophia",
      @"Emma",
      @"Olivia",
      @"Isabella",
      @"Mia",
      @"Ava",
      @"Lily",
      @"Zoe",
      @"Emily",
      @"Chloe",
      @"Layla",
      @"Madison",
      @"Madelyn",
      @"Abigail",
      @"Aubrey",
      @"Charlotte",
      @"Amelia",
      @"Ella",
      @"Kaylee",
      @"Avery",
      @"Aaliyah",
      @"Hailey",
      @"Addison",
      @"Riley",
      @"Harper",
      @"Aria",
      @"Arianna",
      @"Mackenzie",
      @"Lila",
      @"Evelyn",
      @"Adalyn",
      @"Grace",
      @"Brooklyn",
      @"Ellie",
      @"Anna",
      @"Kaitlyn",
      @"Isabelle",
      @"Sophie",
      @"Scarlett",
      @"Natalie",
      @"Leah",
      @"Sarah",
      @"Nora",
      @"Mila",
      @"Elizabeth",
      @"Lillian",
      @"Kylie",
      @"Audrey",
      @"Lucy",
      @"Maya",
      @"Annabelle",
      @"Makayla",
      @"Gabriella",
      @"Elena",
      @"Victoria",
      @"Claire",
      @"Savannah",
      @"Peyton",
      @"Maria",
      @"Alaina",
      @"Kennedy",
      @"Stella",
      @"Liliana",
      @"Allison",
      @"Samantha",
      @"Keira",
      @"Alyssa",
      @"Reagan",
      @"Molly",
      @"Alexandra",
      @"Violet",
      @"Charlie",
      @"Julia",
      @"Sadie",
      @"Ruby",
      @"Eva",
      @"Alice",
      @"Eliana",
      @"Taylor",
      @"Callie",
      @"Penelope",
      @"Camilla",
      @"Bailey",
      @"Kaelyn",
      @"Alexis",
      @"Kayla",
      @"Katherine",
      @"Sydney",
      @"Lauren",
      @"Jasmine",
      @"London",
      @"Bella",
      @"Adeline",
      @"Caroline",
      @"Vivian",
      @"Juliana",
      @"Gianna",
      @"Skyler",
      @"Jordyn",
      @"Jackson",
      @"Aiden",
      @"Liam",
      @"Lucas",
      @"Noah",
      @"Mason",
      @"Jayden",
      @"Ethan",
      @"Jacob",
      @"Jack",
      @"Caden",
      @"Logan",
      @"Benjamin",
      @"Michael",
      @"Caleb",
      @"Ryan",
      @"Alexander",
      @"Elijah",
      @"James",
      @"William",
      @"Oliver",
      @"Connor",
      @"Matthew",
      @"Daniel",
      @"Luke",
      @"Brayden",
      @"Jayce",
      @"Henry",
      @"Carter",
      @"Dylan",
      @"Gabriel",
      @"Joshua",
      @"Nicholas",
      @"Isaac",
      @"Owen",
      @"Nathan",
      @"Grayson",
      @"Eli",
      @"Landon",
      @"Andrew",
      @"Max",
      @"Samuel",
      @"Gavin",
      @"Wyatt",
      @"Christian",
      @"Hunter",
      @"Cameron",
      @"Evan",
      @"Charlie",
      @"David",
      @"Sebastian",
      @"Joseph",
      @"Dominic",
      @"Anthony",
      @"Colton",
      @"John",
      @"Tyler",
      @"Zachary",
      @"Thomas",
      @"Julian",
      @"Levi",
      @"Adam",
      @"Isaiah",
      @"Alex",
      @"Aaron",
      @"Parker",
      @"Cooper",
      @"Miles",
      @"Chase",
      @"Muhammad",
      @"Christopher",
      @"Blake",
      @"Austin",
      @"Jordan",
      @"Leo",
      @"Jonathan",
      @"Adrian",
      @"Colin",
      @"Hudson",
      @"Ian",
      @"Xavier",
      @"Camden",
      @"Tristan",
      @"Carson",
      @"Jason",
      @"Nolan",
      @"Riley",
      @"Lincoln",
      @"Brody",
      @"Bentley",
      @"Nathaniel",
      @"Josiah",
      @"Declan",
      @"Jake",
      @"Asher",
      @"Jeremiah",
      @"Cole",
      @"Mateo",
      @"Micah",
      @"Elliot"];
    
    return [firstNames objectAtIndex:[self randomValueBetween:0 and:[firstNames count]-1]];
}

-(NSString *)getLastName
{
    NSArray *lastNames = @[@"Smith",
    @"Johnson",
    @"Williams",
    @"Browns",
    @"Millers",
    @"Moore",
    @"Anderson",
    @"Jackson",
    @"Harris",
    @"Thopmson",
    @"Martinez",
    @"Clark",
    @"Lewis",
    @"Allen",
    @"Hernandez",
    @"Wright",
    @"Hill"];
    
    return [lastNames objectAtIndex:[self randomValueBetween:0 and:[lastNames count]-1]];

}

-(UIColor *)getRandomColor
{
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
    return color;
}

- (NSInteger)randomValueBetween:(NSInteger)min and:(NSInteger)max {
    return (NSInteger)(min + arc4random_uniform(max - min + 1));
}
@end
