//
//  ThirdViewController.m
//  AddressBook
//
//  Created by Maria Merino on 8/06/13.
//  Copyright (c) 2013 Mobile Makers. All rights reserved.
//

#import "ThirdViewController.h"



@interface ThirdViewController ()
{
    __weak IBOutlet UITextField *editFirst;
    
    __weak IBOutlet UITextField *editLast;
    
    __weak IBOutlet UITextField *editPhone;

    __weak IBOutlet UITextField *editEmail;
    
    __weak IBOutlet UITextField *editAddress;
}
@end

@implementation ThirdViewController

@synthesize thirdDelegate, person;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    //Person *person = [[Person alloc]init];
    editFirst.text = person.firstName;
    editLast.text = person.lastName;
    editPhone.text = person.phoneNumber;
    editEmail.text = person.emailAddress;
    editAddress.text = person.address;
    
    [super viewDidLoad];
   
    
}

-(void)viewDidDisappear:(BOOL)animated{
    person.firstName = editFirst.text;
    person.lastName = editLast.text;
    person.phoneNumber = editPhone.text;
    person.emailAddress = editEmail.text;
    person.address = editAddress.text;
    [thirdDelegate editSecondVCText:person];
}
    

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

@end
