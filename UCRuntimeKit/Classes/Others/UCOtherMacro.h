//
//  UCOtherMacro.m
//  UCRuntimeKit
//
//  Created by Link913 on 2019/1/10.
//

#ifdef DEBUG
#define UCLog(...) NSLog(__VA_ARGS__);\
NSLog(@"file===%@, line===%d",[[NSString stringWithUTF8String:__FILE__] lastPathComponent], __LINE__)
#else
#define UCLog(...)
#endif

