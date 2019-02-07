//
//  SQRLInstallerOwnedBundle.m
//  Squirrel
//
//  Created by Keith Duncan on 08/01/2014.
//  Copyright (c) 2014 GitHub. All rights reserved.
//

#import "SQRLInstallerOwnedBundle.h"

#import "EXTKeyPathCoding.h"

@implementation SQRLInstallerOwnedBundle

- (instancetype)initWithOriginalURL:(NSURL *)originalURL temporaryURL:(NSURL *)temporaryURL codeSignature:(SQRLCodeSignature *)codeSignature {
	return [self initWithDictionary:@{
		(NSString* _Nonnull) @keypath(self.originalURL): originalURL,
		(NSString* _Nonnull) @keypath(self.temporaryURL): temporaryURL,
		(NSString* _Nonnull) @keypath(self.codeSignature): codeSignature,
	} error:NULL];
}

@end
