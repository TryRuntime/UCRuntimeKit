#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "UCOtherMacro.h"
#import "UCMediator.h"
#import "UCMediatorAppdelegateArguments.h"
#import "UCMediatorArgument.h"
#import "UCMediatorError.h"
#import "UCMediatorParser.h"
#import "UCRuntimeKit.h"

FOUNDATION_EXPORT double UCRuntimeKitVersionNumber;
FOUNDATION_EXPORT const unsigned char UCRuntimeKitVersionString[];

