//
//  FKFlickrAuthOauthGetAccessToken.m
//  FlickrKit
//
//  Generated by FKAPIBuilder.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrAuthOauthGetAccessToken.h" 

@implementation FKFlickrAuthOauthGetAccessToken



- (BOOL) needsLogin {
    return NO;
}

- (BOOL) needsSigning {
    return NO;
}

- (FKPermission) requiredPerms {
    return -1;
}

- (NSString *) name {
    return @"flickr.auth.oauth.getAccessToken";
}

- (BOOL) isValid:(NSError **)error {
    BOOL valid = YES;
	NSMutableString *errorDescription = [[NSMutableString alloc] initWithString:@"You are missing required params: "];

	if(error != NULL) {
		if(!valid) {	
			NSDictionary *userInfo = @{NSLocalizedDescriptionKey: errorDescription};
			*error = [NSError errorWithDomain:FKFlickrKitErrorDomain code:FKErrorInvalidArgs userInfo:userInfo];
		}
	}
    return valid;
}

- (NSDictionary *) args {
    NSMutableDictionary *args = [NSMutableDictionary dictionary];

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrAuthOauthGetAccessTokenError_InvalidSignature:
			return @"Invalid signature";
		case FKFlickrAuthOauthGetAccessTokenError_MissingSignature:
			return @"Missing signature";
		case FKFlickrAuthOauthGetAccessTokenError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrAuthOauthGetAccessTokenError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrAuthOauthGetAccessTokenError_WriteOperationFailed:
			return @"Write operation failed";
		case FKFlickrAuthOauthGetAccessTokenError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrAuthOauthGetAccessTokenError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrAuthOauthGetAccessTokenError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrAuthOauthGetAccessTokenError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrAuthOauthGetAccessTokenError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end