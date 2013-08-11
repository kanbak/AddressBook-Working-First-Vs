//
//  Person.m
//  AddressBook
//
//  Created by Maria Merino on 8/06/13.
//  Copyright (c) 2013 Mobile Makers. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize firstName;
@synthesize lastName;
@synthesize emailAddress;
@synthesize phoneNumber;
@synthesize address;

-(NSDictionary*)dictionary:(NSString*)first Last:(NSString*)last Phone:(NSString*)phone Email:(NSString*)email Address:(NSString*)address
{
    NSDictionary * dictionary = [[NSDictionary alloc ] initWithObjectsAndKeys:first,@"firstName",last,@"lastName",phone,@"phoneNumber",email,@"emailAddress",nil];
    return dictionary;
}
-(Person*)initPerson:(NSDictionary*)dictionary
{
    Person * person = [[Person alloc] init];
    person.firstName = [dictionary objectForKey:@"firstName"];
    person.lastName = [dictionary objectForKey:@"lastName"];
    person.phoneNumber = [dictionary objectForKey:@"phoneNumber"];
    person.emailAddress = [dictionary objectForKey:@"emailAddress"];
    person.address = [dictionary objectForKey:@"address"];
    
    return person;
}

@end
