//
//  UCMediator+ObjcCategorySwift.m
//  UCRuntimeKit_Example
//
//  Created by Link on 2019/2/11.
//  Copyright © 2019 Link. All rights reserved.
//

#import "UCMediator+ObjcCategorySwift.h"
#import "UCRuntimeKit-Swift.h"

@implementation UCMediator (ObjcCategorySwift)

- (void)testObjcCategorySwiftNoArguNoReturn:(void (^)(NSError *))invokeErrorBlock {
    NSString *className = [UCMediatorParameterParser getObjcClassName:@"UCSwiftModuleTarget2"];
    NSError *error;
    [[UCMediator sharedInstance] nativePerformTarget:className
                                              action:@"noReturnNoParameter"
                                              params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
}

- (id)testObjcCategorySwiftNoArguReturnInt:(void (^)(NSError *))invokeErrorBlock {
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

- (id)testObjcCategorySwiftNoArguReturnUInt:(void (^)(NSError *))invokeErrorBlock {
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

- (id)testObjcCategorySwiftNoArguReturnShort:(void (^)(NSError *))invokeErrorBlock {
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

- (id)testObjcCategorySwiftNoArguReturnUShort:(void (^)(NSError *))invokeErrorBlock {
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

- (id)testObjcCategorySwiftNoArguReturnLong:(void (^)(NSError *))invokeErrorBlock {
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

- (id)testObjcCategorySwiftNoArguReturnLongLong:(void (^)(NSError *))invokeErrorBlock {
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

- (id)testObjcCategorySwiftNoArguReturnULongLong:(void (^)(NSError *))invokeErrorBlock {
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

- (id)testObjcCategorySwiftNoArguReturnFloat:(void (^)(NSError *))invokeErrorBlock {
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

- (id)testObjcCategorySwiftNoArguReturnDouble:(void (^)(NSError *))invokeErrorBlock {
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

- (id)testObjcCategorySwiftNoArguReturnChar:(void (^)(NSError *))invokeErrorBlock {
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

- (id)testObjcCategorySwiftNoArguReturnUChar:(void (^)(NSError *))invokeErrorBlock {
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

- (id)testObjcCategorySwiftNoArguReturnTrue:(void (^)(NSError *))invokeErrorBlock {
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

- (id)testObjcCategorySwiftNoArguReturnFalse:(void (^)(NSError *))invokeErrorBlock {
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

- (id)testObjcCategorySwiftNoArguReturnInteger:(void (^)(NSError *))invokeErrorBlock {
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

- (id)testObjcCategorySwiftNoArguReturnCGFloat:(void (^)(NSError *))invokeErrorBlock {
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

- (id)testObjcCategorySwiftNoArguReturnNSString:(void (^)(NSError *))invokeErrorBlock {
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

- (id)testObjcCategorySwiftNoArguReturnString:(void (^)(NSError *))invokeErrorBlock {
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

- (id)testObjcCategorySwiftNoArguReturnAny:(void (^)(NSError *))invokeErrorBlock {
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

- (id)testObjcCategorySwiftNoArguReturnArray:(void (^)(NSError *))invokeErrorBlock {
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

- (id)testObjcCategorySwiftNoArguReturnStringArray:(void (^)(NSError *))invokeErrorBlock {
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

- (id)testObjcCategorySwiftNoArguReturnNSStringArray:(void (^)(NSError *))invokeErrorBlock {
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

- (id)testObjcCategorySwiftNoArguReturnDictionary:(void (^)(NSError *))invokeErrorBlock {
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

- (id)testObjcCategorySwiftNoArguReturnNSDictionary:(void (^)(NSError *))invokeErrorBlock {
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

- (id)testObjcCategorySwiftNoArguReturnNSNumber:(void (^)(NSError *))invokeErrorBlock {
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

- (id)testObjcCategorySwiftSuccessBlock:(void (^)(NSError *))invokeErrorBlock {
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

- (id)testObjcCategorySwiftReturnSelf:(void (^)(NSError *))invokeErrorBlock {
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
