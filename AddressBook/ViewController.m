//
//  ViewController.m
//  AddressBook
//
//  Created by Maria Merino on 8/06/13.
//  Copyright (c) 2013 Mobile Makers. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "SecondViewController.h"

@interface ViewController ()
{
    NSMutableArray *myArray;
    int row;
    __weak IBOutlet UITableView *myTableview;    
}

@end

@implementation ViewController

#pragma  mark Delegate
-(void)sendMessage:(NSString *)string //5b
{
    NSLog(@"%@",string);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        Person *person1;
        Person *person2;
        Person *person3;
        Person *person4;
        Person *person5;
        
        person1 = [[Person alloc]init];
        person1.firstName = @"Tony";
        person1.lastName = @"Escano";
        person1.phoneNumber = @"222-222-2222";
        person1.emailAddress = @"tonye@yahoo.com";
        person1.address = @"222 Erie St. Chicago, IL 60654";
        
        person2 = [[Person alloc]init];
        person2.firstName = @"Milette";
        person2.lastName = @"Escano";
        person2.phoneNumber = @"333-333-3333";
        person2.emailAddress = @"joela@yahoo.com";
        person2.address = @"828 Franklin St. Chicago, IL 60654";
        
        
        person3 = [[Person alloc]init];
        person3.firstName = @"Anthony";
        person3.lastName = @"Merino";
        person3.phoneNumber = @"444-444-4444";
        person3.emailAddress = @"anthonym@yahoo.com";
        person3.address = @"323 Ontario St. Chicago, IL 60654";
        
        person4 = [[Person alloc]init];
        person4.firstName = @"Scott";
        person4.lastName = @"Lambert";
        person4.phoneNumber = @"555-555-5555";
        person4.emailAddress = @"scottl@yahoo.com";
        person4.address = @"656 Chicago St. Chicago, IL 60654";
        
        person5 = [[Person alloc]init];
        person5.firstName = @"Maria";
        person5.lastName = @"Sestoso";
        person5.phoneNumber = @"666-666-6666";
        person5.emailAddress = @"marias@yahoo.com";
        person5.address = @"789 State St. Chicago, IL 60654";
        
        myArray = [NSMutableArray arrayWithObjects:person1, person2, person3, person4, person5, nil];
        
    
    }
    
    
    return self;
}

- (int) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (int) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [myArray count];
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"my identifier"];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"my identifier"];
    }
    cell.textLabel.text = [[myArray objectAtIndex:indexPath.row] firstName];
    return cell;
}

-  (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    row = indexPath.row;
    [self performSegueWithIdentifier:@"info" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"info"]) {
    SecondViewController *secondViewController = segue.destinationViewController;
    secondViewController.secDelegate = self;  //6
    secondViewController.delegate = self;
    secondViewController.person = [myArray objectAtIndex:row];
    
    }
    
}
#pragma mark EditPersonDelegate
-(void) editPerson: (Person*) aPerson
{
    Person* editP = [[Person alloc] init];
    editP.firstName = aPerson.firstName;
    editP.lastName = aPerson.lastName;
    editP.phoneNumber = aPerson.phoneNumber;
    editP.emailAddress = aPerson.emailAddress;
    
    [myArray replaceObjectAtIndex:row withObject:editP];
    [myTableview reloadData];
}

#pragma mark EditPersonDelegate

-(void) removePerson:(Person *)removePerson;
{
    [myArray removeObjectAtIndex:row];
    [myTableview reloadData];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}



@end
