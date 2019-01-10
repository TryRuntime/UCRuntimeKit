//
//  UCOtherMacro.m
//  UCRuntimeKit
//
//  Created by Link913 on 2019/1/10.
//

#ifdef DEBUG
#define UCLog(...) NSLog(__VA_ARGS__)
#else
#define UCLog(...)
#endif
