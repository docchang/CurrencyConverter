/*
	SDZServices.h
	Creates a list of the services available with the SDZ prefix.
	Generated by SudzC.com
*/
#import "SDZCurrencyConvertor.h"

@interface SDZServices : NSObject {
	BOOL logging;
	NSString* server;
	NSString* defaultServer;
SDZCurrencyConvertor* currencyConvertor;

}

-(id)initWithServer:(NSString*)serverName;
-(void)updateService:(SoapService*)service;
-(void)updateServices;
+(SDZServices*)service;
+(SDZServices*)serviceWithServer:(NSString*)serverName;

@property BOOL logging;
@property (nonatomic, retain) NSString* server;
@property (nonatomic, retain) NSString* defaultServer;

@property (nonatomic, retain, readonly) SDZCurrencyConvertor* currencyConvertor;

@end
			