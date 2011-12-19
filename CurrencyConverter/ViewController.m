//
//  ViewController.m
//  CurrencyConverter
//
//  Created by Dominic Chang on 12/19/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "SDZCurrencyConvertor.h"


@interface ViewController()
@property (nonatomic, retain) SDZCurrencyConvertor *convertorService;
@end



@implementation ViewController
@synthesize ouncesOfGold;
@synthesize valueInCurrency;
@synthesize currency;
@synthesize convertorService;

- (void) dealloc {
    [ouncesOfGold release];
    [valueInCurrency release];
    [currency release];
    [convertorService release];
    
    [super dealloc];
}

#pragma mark - 
#pragma mark soapDelegate
- (void) onload:(id)value {
    
    double value_double = [((NSString *)value) doubleValue];
    NSLog(@"onload value: %f", value_double);
    
    double ounces = [ouncesOfGold.text doubleValue];
    
    NSNumber * result = [NSNumber numberWithDouble:value_double * ounces];
    valueInCurrency.text = [result stringValue];
}
- (void) onerror: (NSError*) error {
    NSLog(@"onerror error: %@", error);
}
- (void) onfault: (SoapFault*) fault {
    NSLog(@"onfault fault: %@", fault);
}

- (IBAction)currencyPressed:(id)sender {
    NSString *toCurrency = ((UIButton *)sender).titleLabel.text;    
    [self.convertorService ConversionRate:self FromCurrency:@"XAU" ToCurrency:toCurrency];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.convertorService = [SDZCurrencyConvertor service];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
