//
//  UCMediaorParser.h
//  Expecta
//
//  Created by Link913 on 2019/1/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

extern  NSString *const __nonnull kUCMediatorENCodeURL;
extern  NSString *const __nonnull kUCMediatorScheme;
extern  NSString *const __nonnull kUCMediatorModule;
extern  NSString *const __nonnull kUCMediatorAction;
extern  NSString *const __nonnull kUCMediatorQuery;
extern  NSString *const __nonnull kUCMediatorSymbol;
extern  NSString *const __nonnull kUCMediatorErrorKey;

@interface UCMediatorParser : NSObject

- (NSMutableDictionary *)extractParametersFromURL:(NSString *)url;
- (NSDictionary *)extractParamsFromQuery:(NSString *)query;
- (NSMutableDictionary *) composeParams:(NSDictionary *)queryParams attachParams:(id)attachParams;

@end

NS_ASSUME_NONNULL_END
