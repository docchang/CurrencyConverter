//
//  ViewController.h
//  CurrencyConverter
//
//  Created by Dominic Chang on 12/19/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "SoapDelegate.h"

@interface ViewController : UIViewController <SoapDelegate>


@property (nonatomic, retain) IBOutlet UITextField *ouncesOfGold;
@property (nonatomic, retain) IBOutlet UILabel *valueInCurrency;
@property (nonatomic, retain) IBOutlet UIButton *currency;

- (IBAction) currencyPressed:(id)sender;


@end
