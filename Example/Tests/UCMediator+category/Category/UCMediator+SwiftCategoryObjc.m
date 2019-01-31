//
//  UCMediator+SwiftCategoryObjc.m
//  UCRuntimeKit_Example
//
//  Created by Link on 2019/1/31.
//  Copyright © 2019 Link. All rights reserved.
//

#import "UCMediator+SwiftCategoryObjc.h"

@implementation UCMediator (SwiftCategoryObjc)

- (void)testSwiftCategoryObjcNoArguNoReturn:(void (^)(NSError *))invokeErrorBlock {
    NSError *error;
    [[UCMediator sharedInstance] nativePerformTarget:@"UCMeditorRuntimeMethodTestFile"
                                              action:@"noResultNoArgumentMethod"
                                              params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
}

- (void)testSwiftCategoryObjcOneArguNoReturn:(void (^)(NSError *))invokeErrorBlock {
    NSError *error;
    NSDictionary *dict = @{@"testSwiftCategoryObjcOneArguNoReturn": @"调用"};
    [[UCMediator sharedInstance] nativePerformTarget:@"UCMeditorRuntimeMethodTestFile"
                                              action:@"noResultOneArguMethod:"
                                              params:dict completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
}

- (id)testSwiftCategoryObjcNoArguReturnInt:(void (^)(NSError *))invokeErrorBlock {
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:@"UCMeditorRuntimeMethodTestFile"
                                                          action:@"returnIntNoArgumentMethod"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    
    return result;
}

- (id)testSwiftCategoryObjcNoArguReturnUInt:(void (^)(NSError *))invokeErrorBlock {
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:@"UCMeditorRuntimeMethodTestFile"
                                                          action:@"returnUIntNoArgumentMethod"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    
    return result;
}

- (id)testSwiftCategoryObjcNoArguReturnShort:(void (^)(NSError *))invokeErrorBlock {
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:@"UCMeditorRuntimeMethodTestFile"
                                                          action:@"returnShortNoArgumentMethod"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    
    return result;
}

- (id)testSwiftCategoryObjcNoArguReturnUShort:(void (^)(NSError *))invokeErrorBlock {
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:@"UCMeditorRuntimeMethodTestFile"
                                                          action:@"returnUShortNoArgumentMethod"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    
    return result;
}

- (id)testSwiftCategoryObjcNoArguReturnLong:(void (^)(NSError *))invokeErrorBlock {
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:@"UCMeditorRuntimeMethodTestFile"
                                                          action:@"returnLongNoArgumentMethod"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    
    return result;
}

- (id)testSwiftCategoryObjcNoArguReturnULong:(void (^)(NSError *))invokeErrorBlock {
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:@"UCMeditorRuntimeMethodTestFile"
                                                          action:@"returnULongNoArgumentMethod"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    
    return result;
}

- (id)testSwiftCategoryObjcNoArguReturnLongLong:(void (^)(NSError *))invokeErrorBlock {
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:@"UCMeditorRuntimeMethodTestFile"
                                                          action:@"returnLongLongNoArgumentMethod"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    
    return result;
}

- (id)testSwiftCategoryObjcNoArguReturnULongLong:(void (^)(NSError *))invokeErrorBlock {
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:@"UCMeditorRuntimeMethodTestFile"
                                                          action:@"returnULongLongNoArgumentMethod"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    
    return result;
}

- (id)testSwiftCategoryObjcNoArguReturnFloat:(void (^)(NSError *))invokeErrorBlock {
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:@"UCMeditorRuntimeMethodTestFile"
                                                          action:@"returnFloatNoArgumentMethod"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    
    return result;
}

- (id)testSwiftCategoryObjcNoArguReturnDouble:(void (^)(NSError *))invokeErrorBlock {
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:@"UCMeditorRuntimeMethodTestFile"
                                                          action:@"returnDoubleNoArgumentMethod"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    
    return result;
}

- (id)testSwiftCategoryObjcNoArguReturnChar:(void (^)(NSError *))invokeErrorBlock {
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:@"UCMeditorRuntimeMethodTestFile"
                                                          action:@"returnCharNoArgumentMethod"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    
    return result;
}

- (id)testSwiftCategoryObjcNoArguReturnUChar:(void (^)(NSError *))invokeErrorBlock {
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:@"UCMeditorRuntimeMethodTestFile"
                                                          action:@"returnUCharNoArgumentMethod"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    
    return result;
}

- (id)testSwiftCategoryObjcNoArguReturnTrue:(void (^)(NSError *))invokeErrorBlock {
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:@"UCMeditorRuntimeMethodTestFile"
                                                          action:@"returnYesNoArgumentMethod"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    
    return result;
}

- (id)testSwiftCategoryObjcNoArguReturnFalse:(void (^)(NSError *))invokeErrorBlock {
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:@"UCMeditorRuntimeMethodTestFile"
                                                          action:@"returnNoNoArgumentMethod"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    
    return result;
}

- (id)testSwiftCategoryObjcNoArguReturnInteger:(void (^)(NSError *))invokeErrorBlock {
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:@"UCMeditorRuntimeMethodTestFile"
                                                          action:@"returnIntegerNoArgumentMethod"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    
    return result;
}

- (id)testSwiftCategoryObjcNoArguReturnUInteger:(void (^)(NSError *))invokeErrorBlock {
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:@"UCMeditorRuntimeMethodTestFile"
                                                          action:@"returnUIntegerNoArgumentMethod"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    
    return result;
}

- (id)testSwiftCategoryObjcNoArguReturnCGFloat:(void (^)(NSError *))invokeErrorBlock {
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:@"UCMeditorRuntimeMethodTestFile"
                                                          action:@"returnCGFloatNoArgumentMethod"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    
    return result;
}

- (id)testSwiftCategoryObjcNoArguReturnNSString:(void (^)(NSError *))invokeErrorBlock {
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:@"UCMeditorRuntimeMethodTestFile"
                                                          action:@"returnStringNoArgumentMethod"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    
    return result;
}

- (id)testSwiftCategoryObjcNoArguReturnIntArray:(void (^)(NSError *))invokeErrorBlock {
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:@"UCMeditorRuntimeMethodTestFile"
                                                          action:@"returnArrayNoArgumentMethod"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    
    return result;
}

- (id)testSwiftCategoryObjcNoArguReturnNSDictionary:(void (^)(NSError *))invokeErrorBlock {
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:@"UCMeditorRuntimeMethodTestFile"
                                                          action:@"returnDictNoArgumentMethod"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    
    return result;
}

- (id)testSwiftCategoryObjcNoArguReturnNSNumber:(void (^)(NSError *))invokeErrorBlock {
    NSError *error;
    id result = [[UCMediator sharedInstance] nativePerformTarget:@"UCMeditorRuntimeMethodTestFile"
                                                          action:@"returnNumberNoArgumentMethod"
                                                          params:nil completion:nil failure:nil error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    
    return result;
}

- (void)testSwiftCategoryObjcBlock:(void (^)(NSError *))invokeErrorBlock {
    NSError *error;
    [[UCMediator sharedInstance] nativePerformTarget:@"UCMeditorRuntimeMethodTestFile"
                                              action:@"noArgumentblockTest:"
                                              params:nil completion:^(NSDictionary<NSString *,id> * _Nonnull result) {
                                                  NSLog(@"🍎🍎🍎🍎🍎testSwiftCategoryObjcBlock成功");
                                              } failure:^(NSError * _Nonnull error) {
                                                  NSLog(@"🍎🍎🍎🍎🍎testSwiftCategoryObjcBlock失败");
                                              } error:&error];
    if (error) {
        invokeErrorBlock(error);
    }
    
}
@end

