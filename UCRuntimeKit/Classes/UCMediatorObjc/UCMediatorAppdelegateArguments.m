//
//  UCMediatorAppdelegateArguments.m
//  UCRuntimeKit
//
//  Created by Link on 2019/1/13.
//

#import "UCMediatorAppdelegateArguments.h"

@interface UCMediatorAppdelegateArguments()
@property (strong, nonatomic)NSMutableArray *mArray;
@end
@implementation UCMediatorAppdelegateArguments

- (instancetype)addElement:(nullable id)element {
    
    if (element) {
        [self.mArray addObject:element];
    } else {
        [self.mArray addObject:[NSNull null]];
    }
    return self;
}
- (NSArray *)getArgumentsArray {
    return [self.mArray copy];
}
- (NSMutableArray *)mArray {
    if (!_mArray) {
        _mArray = [NSMutableArray array];
    }
    return _mArray;
}
@end
