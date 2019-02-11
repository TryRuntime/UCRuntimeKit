//
//  UCMediator+SwiftCategorySwift.m
//  UCRuntimeKit_Example
//
//  Created by Link on 2019/1/30.
//  Copyright © 2019 Link. All rights reserved.
//

#import "UCMediator+SwiftCategorySwift.h"
#import "UCRuntimeKit-Swift.h"

@implementation UCMediator (SwiftCategorySwift)

- (void)testSwiftCategorySwiftNoArguNoReturn:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    [[UCMediator sharedInstance] nativePerformTarget:className
                                              action:@"noReturnNoParameter"
                                              params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
}

- (id)testSwiftCategorySwiftNoArguReturnInt:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:className
                                              action:@"returnInt"
                                              params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    return result;
}

- (id)testSwiftCategorySwiftNoArguReturnUInt:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:className
                                                          action:@"returnUInt"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    return result;
}

- (id)testSwiftCategorySwiftNoArguReturnShort:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:className
                                                          action:@"returnShort"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    return result;
}

- (id)testSwiftCategorySwiftNoArguReturnUShort:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:className
                                                          action:@"returnUShort"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    return result;
}

- (id)testSwiftCategorySwiftNoArguReturnLong:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:className
                                                          action:@"returnLong"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    return result;
}

- (id)testSwiftCategorySwiftNoArguReturnLongLong:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:className
                                                          action:@"returnLongLong"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    return result;
}

- (id)testSwiftCategorySwiftNoArguReturnULongLong:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:className
                                                          action:@"returnULongLong"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    return result;
}

- (id)testSwiftCategorySwiftNoArguReturnFloat:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:className
                                                          action:@"returnFloat"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    return result;
}

- (id)testSwiftCategorySwiftNoArguReturnDouble:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:className
                                                          action:@"returnDouble"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    return result;
}

- (id)testSwiftCategorySwiftNoArguReturnChar:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:className
                                                          action:@"returnChar"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    return result;
}

- (id)testSwiftCategorySwiftNoArguReturnUChar:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:className
                                                          action:@"returnUChar"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    return result;
}

- (id)testSwiftCategorySwiftNoArguReturnTrue:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:className
                                                          action:@"returnTrue"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    return result;
}

- (id)testSwiftCategorySwiftNoArguReturnFalse:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:className
                                                          action:@"returnFalse"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    return result;
}

- (id)testSwiftCategorySwiftNoArguReturnInteger:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:className
                                                          action:@"returnInteger"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    return result;
}

- (id)testSwiftCategorySwiftNoArguReturnCGFloat:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:className
                                                          action:@"returnCGFloat"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    return result;
}

- (id)testSwiftCategorySwiftNoArguReturnNSString:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:className
                                                          action:@"returnNSString"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    return result;
}

- (id)testSwiftCategorySwiftNoArguReturnString:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:className
                                                          action:@"returnString"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    return result;
}

- (id)testSwiftCategorySwiftNoArguReturnAny:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:className
                                                          action:@"returnAny"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    return result;
}

- (id)testSwiftCategorySwiftNoArguReturnArray:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:className
                                                          action:@"returnIntArray"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    return result;
}

- (id)testSwiftCategorySwiftNoArguReturnStringArray:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:className
                                                          action:@"returnStringArray"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    return result;
}

- (id)testSwiftCategorySwiftNoArguReturnNSStringArray:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:className
                                                          action:@"returnNSStringArray"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    return result;
}

- (id)testSwiftCategorySwiftNoArguReturnDictionary:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:className
                                                          action:@"returnDictionary"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    return result;
}

- (id)testSwiftCategorySwiftNoArguReturnNSDictionary:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:className
                                                          action:@"returnNSDictionary"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    return result;
}

- (id)testSwiftCategorySwiftNoArguReturnNSNumber:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:className
                                                          action:@"returnNSNumber"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    return result;
}

- (id)testSwiftCategorySwiftSuccessBlock:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:className
                                                          action:@"returnSuccessBlock:"
                                                          params:nil completion:^(NSDictionary<NSString *,id> * _Nonnull result) {
                                                              NSLog(@"🍎🍎🍎🍎🍎🍎🍎swift->category->swift%@",result);
                                                          } failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    return result;
}

- (id)testSwiftCategorySwiftReturnSelf:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    NSDictionary *dict = @{@"key1": @"1"};
    id result = [[UCMediator sharedInstance] nativePerformTarget:className
                                                          action:@"returnSelf:"
                                                          params:dict completion:^(NSDictionary<NSString *,id> * _Nonnull result) {
                                                              NSLog(@"🍎🍎🍎🍎🍎🍎🍎swift->category->swift%@",result);
                                                          } failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    return result;
}
@end
