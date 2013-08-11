//
//  ViewController.h
//  AddressBook
//
//  Created by Maria Merino on 8/06/13.
//  Copyright (c) 2013 Mobile Makers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EditPersonDelegate.h"
#import "SecondViewController.h" //4 on the target object, import the class which states the protocol

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, EditPersonDelegate,SecondDelegate, UINavigationBarDelegate>   //5 on the target object, conform the protocol

@end
