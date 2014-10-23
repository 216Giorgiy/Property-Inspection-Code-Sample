/*******************************************************************************
 * Copyright (c) Microsoft Open Technologies, Inc.
 * All Rights Reserved
 * See License.txt in the project root for license information.
 ******************************************************************************/

#import "MSOMessageOperations.h"

/**
* The implementation file for type MSOMessageOperations.
*/

@implementation MSOMessageOperations

-(id)initWith:(NSString *)urlComponent :(id<MSOODataExecutable>)parent{
    return [super initOperationWithUrl:urlComponent Parent:parent];
}


-(NSURLSessionDataTask*)copy : (NSString *) destinationId : (void (^)(MSOMessage *message, NSError *error))callback{

	id<MSOODataURL> url = [[self getResolver] createODataURL];

			NSArray* parameters = [[NSArray alloc] initWithObjects:
	[[NSDictionary alloc] initWithObjectsAndKeys :destinationId,@"DestinationId",nil ],nil];

	NSData* payload = [[MSOBaseODataContainerHelper generatePayload:parameters :[self getResolver]]dataUsingEncoding:NSUTF8StringEncoding];
	[url appendPathComponent:@"Copy"];
		
	NSURLSessionDataTask* task = [super oDataExecute:url :payload :POST :^(id<MSOResponse> r, NSError *error) {
        
       if(error == nil){
			MSOMessage * result = (MSOMessage *)[[[self getResolver]getJsonSerializer] deserialize:[r getData] : [MSOMessage class]];
            callback(result, error);
        }
        else{
            callback(nil, error);
        }
    }];
    
    return task;
}			

-(NSURLSessionDataTask*)move : (NSString *) destinationId : (void (^)(MSOMessage *message, NSError *error))callback{

	id<MSOODataURL> url = [[self getResolver] createODataURL];

			NSArray* parameters = [[NSArray alloc] initWithObjects:
	[[NSDictionary alloc] initWithObjectsAndKeys :destinationId,@"DestinationId",nil ],nil];

	NSData* payload = [[MSOBaseODataContainerHelper generatePayload:parameters :[self getResolver]]dataUsingEncoding:NSUTF8StringEncoding];
	[url appendPathComponent:@"Move"];
		
	NSURLSessionDataTask* task = [super oDataExecute:url :payload :POST :^(id<MSOResponse> r, NSError *error) {
        
       if(error == nil){
			MSOMessage * result = (MSOMessage *)[[[self getResolver]getJsonSerializer] deserialize:[r getData] : [MSOMessage class]];
            callback(result, error);
        }
        else{
            callback(nil, error);
        }
    }];
    
    return task;
}			

-(NSURLSessionDataTask*)createReply : (void (^)(MSOMessage *message, NSError *error))callback{

	id<MSOODataURL> url = [[self getResolver] createODataURL];

			
	NSData* payload = nil;
	[url appendPathComponent:@"CreateReply"];
		
	NSURLSessionDataTask* task = [super oDataExecute:url :payload :POST :^(id<MSOResponse> r, NSError *error) {
        
       if(error == nil){
			MSOMessage * result = (MSOMessage *)[[[self getResolver]getJsonSerializer] deserialize:[r getData] : [MSOMessage class]];
            callback(result, error);
        }
        else{
            callback(nil, error);
        }
    }];
    
    return task;
}			

-(NSURLSessionDataTask*)createReplyAll : (void (^)(MSOMessage *message, NSError *error))callback{

	id<MSOODataURL> url = [[self getResolver] createODataURL];

			
	NSData* payload = nil;
	[url appendPathComponent:@"CreateReplyAll"];
		
	NSURLSessionDataTask* task = [super oDataExecute:url :payload :POST :^(id<MSOResponse> r, NSError *error) {
        
       if(error == nil){
			MSOMessage * result = (MSOMessage *)[[[self getResolver]getJsonSerializer] deserialize:[r getData] : [MSOMessage class]];
            callback(result, error);
        }
        else{
            callback(nil, error);
        }
    }];
    
    return task;
}			

-(NSURLSessionDataTask*)createForward : (void (^)(MSOMessage *message, NSError *error))callback{

	id<MSOODataURL> url = [[self getResolver] createODataURL];

			
	NSData* payload = nil;
	[url appendPathComponent:@"CreateForward"];
		
	NSURLSessionDataTask* task = [super oDataExecute:url :payload :POST :^(id<MSOResponse> r, NSError *error) {
        
       if(error == nil){
			MSOMessage * result = (MSOMessage *)[[[self getResolver]getJsonSerializer] deserialize:[r getData] : [MSOMessage class]];
            callback(result, error);
        }
        else{
            callback(nil, error);
        }
    }];
    
    return task;
}			

-(NSURLSessionDataTask*)reply : (NSString *) comment : (void (^)(int returnValue, NSError *error))callback{

	id<MSOODataURL> url = [[self getResolver] createODataURL];

			NSArray* parameters = [[NSArray alloc] initWithObjects:
	[[NSDictionary alloc] initWithObjectsAndKeys :comment,@"Comment",nil ],nil];

	NSData* payload = [[MSOBaseODataContainerHelper generatePayload:parameters :[self getResolver]]dataUsingEncoding:NSUTF8StringEncoding];
	[url appendPathComponent:@"Reply"];
		
	NSURLSessionDataTask* task = [super oDataExecute:url :payload :POST :^(id<MSOResponse> r, NSError *error) {
        
       if(error == nil){
			int result = (int)[[[self getResolver]getJsonSerializer] deserialize:[r getData] : nil];
            callback(result, error);
        }
        else{
            callback([r getStatus], error);
        }
    }];
    
    return task;
}			

-(NSURLSessionDataTask*)replyAll : (NSString *) comment : (void (^)(int returnValue, NSError *error))callback{

	id<MSOODataURL> url = [[self getResolver] createODataURL];

			NSArray* parameters = [[NSArray alloc] initWithObjects:
	[[NSDictionary alloc] initWithObjectsAndKeys :comment,@"Comment",nil ],nil];

	NSData* payload = [[MSOBaseODataContainerHelper generatePayload:parameters :[self getResolver]]dataUsingEncoding:NSUTF8StringEncoding];
	[url appendPathComponent:@"ReplyAll"];
		
	NSURLSessionDataTask* task = [super oDataExecute:url :payload :POST :^(id<MSOResponse> r, NSError *error) {
        
       if(error == nil){
			int result = (int)[[[self getResolver]getJsonSerializer] deserialize:[r getData] : nil];
            callback(result, error);
        }
        else{
            callback([r getStatus], error);
        }
    }];
    
    return task;
}			

-(NSURLSessionDataTask*)forward : (NSString *) comment : (NSMutableArray<MSORecipient> *) toRecipients : (void (^)(int returnValue, NSError *error))callback{

	id<MSOODataURL> url = [[self getResolver] createODataURL];

			NSArray* parameters = [[NSArray alloc] initWithObjects:
	[[NSDictionary alloc] initWithObjectsAndKeys :comment,@"Comment",nil ],
	[[NSDictionary alloc] initWithObjectsAndKeys :toRecipients,@"ToRecipients",nil ],nil];

	NSData* payload = [[MSOBaseODataContainerHelper generatePayload:parameters :[self getResolver]]dataUsingEncoding:NSUTF8StringEncoding];
	[url appendPathComponent:@"Forward"];
		
	NSURLSessionDataTask* task = [super oDataExecute:url :payload :POST :^(id<MSOResponse> r, NSError *error) {
        
       if(error == nil){
			int result = (int)[[[self getResolver]getJsonSerializer] deserialize:[r getData] : nil];
            callback(result, error);
        }
        else{
            callback([r getStatus], error);
        }
    }];
    
    return task;
}			

-(NSURLSessionDataTask*)send : (void (^)(int returnValue, NSError *error))callback{

	id<MSOODataURL> url = [[self getResolver] createODataURL];

			
	NSData* payload = nil;
	[url appendPathComponent:@"Send"];
		
	NSURLSessionDataTask* task = [super oDataExecute:url :payload :POST :^(id<MSOResponse> r, NSError *error) {
        
       if(error == nil){
			int result = (int)[[[self getResolver]getJsonSerializer] deserialize:[r getData] : nil];
            callback(result, error);
        }
        else{
            callback([r getStatus], error);
        }
    }];
    
    return task;
}			

@end