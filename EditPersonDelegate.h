//
//  EditPersonDelegate.h
//  AddressBook
//
//  Created by Maria Merino on 8/06/13.
//  Copyright (c) 2013 Mobile Makers. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;

@protocol EditPersonDelegate <NSObject>

-(void) editPerson: (Person*) aPerson;
-(void) removePerson: (Person*) aPerson;

@end
