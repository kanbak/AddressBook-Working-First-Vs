//
//  ThirdViewController.h
//  AddressBook
//
//  Created by Maria Merino on 8/06/13.
//  Copyright (c) 2013 Mobile Makers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ThirdVCEditDelegate.h"
#import "Person.h"

@interface ThirdViewController : UIViewController 

@property (weak, nonatomic) id <ThirdVCEditDelegate> thirdDelegate;
@property (strong, nonatomic) Person *person;

@end
