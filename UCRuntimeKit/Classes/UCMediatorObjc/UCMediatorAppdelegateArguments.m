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

- (void)addElement:(nullable id)element {
    
    if (element) {
        [self.mArray addObject:element];
    } else {
        [self.mArray addObject:[NSNull null]];
    }
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
