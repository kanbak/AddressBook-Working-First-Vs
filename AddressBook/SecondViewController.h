//
//  SecondViewController.h
//  AddressBook
//
//  Created by Maria Merino on 8/06/13.
//  Copyright (c) 2013 Mobile Makers. All rights reserved.
//
#import "Person.h"
#import <Foundation/Foundation.h>
#import "EditPersonDelegate.h"
#import "ThirdViewController.h"
#import "ThirdVCEditDelegate.h"

@protocol SecondDelegate; //2 redefine a protocol

@interface SecondViewController : UIViewController <ThirdVCEditDelegate>

@property (weak, nonatomic) id <SecondDelegate> secDelegate; //3 make a property that conforms to the protocol on the origin
@property (strong, nonatomic) Person *person;
@property (strong, nonatomic) id <EditPersonDelegate>delegate;

@end

@protocol SecondDelegate <NSObject> //1 define a protocol and make methods

-(void)sendMessage:(NSString*)string;

@end