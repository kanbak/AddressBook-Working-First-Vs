//
//  ThirdVCEditDelegate.h
//  AddressBook
//
//  Created by Maria Merino on 8/06/13.
//  Copyright (c) 2013 Mobile Makers. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ThirdVCEditDelegate.h"
@class Person;

@protocol ThirdVCEditDelegate <NSObject> 

-(void) editSecondVCText: (Person *)editPerson;
@end
