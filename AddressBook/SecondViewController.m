//
//  SecondViewController.m
//  AddressBook
//
//  Created by Maria Merino on 8/06/13.
//  Copyright (c) 2013 Mobile Makers. All rights reserved.
//

#import "SecondViewController.h"
@interface SecondViewController ()
{
    __weak IBOutlet UILabel *firstName;
    __weak IBOutlet UILabel *lastName;
    __weak IBOutlet UILabel *phoneNumber;
    __weak IBOutlet UILabel *email;
    __weak IBOutlet UILabel *address;
}
- (IBAction)editText:(id)sender;
- (IBAction)deleteContact:(id)sender;

@end

@implementation SecondViewController
@synthesize person, secDelegate, delegate;

#pragma  mark Delegate
-(void) editSecondVCText: (Person *)editPerson;
{
    firstName.text = editPerson.firstName;
    lastName.text = editPerson.lastName ;
    phoneNumber.text = editPerson.phoneNumber;
    email.text = editPerson.emailAddress;
    address.text = editPerson.address;
    
    [delegate editPerson:person];
}

/*-(void)viewDidDisappear:(BOOL)animated
{
    [delegate editPerson:person];
*/


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ThirdViewController *thirdViewController = segue.destinationViewController;
    thirdViewController.thirdDelegate = self;  //6 set the delegate, property on the origin to be the target
    thirdViewController.person = person;
    
}
- (void) viewDidLoad
{
    [super viewDidLoad];

    firstName.text = person.firstName;
    lastName.text = person.lastName;
    phoneNumber.text = person.phoneNumber;
    email.text = person.emailAddress;
    address.text = person.address;
    
}

- (IBAction)action:(id)sender {
    [self.secDelegate sendMessage:@"yes"]; //7 call the method on the delegate when appropriate
}
- (IBAction)editText:(id)sender {
    
    [self performSegueWithIdentifier:@"toThirdVC" sender:self];
        
}

- (IBAction)deleteContact:(id)sender {
    [delegate removePerson:person];
    [self.navigationController popViewControllerAnimated:YES];
}
@end
