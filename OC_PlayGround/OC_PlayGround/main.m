//
//  main.m
//  OC_PlayGround
//
//  Created by Andy on 2019/6/27.
//  Copyright © 2019 Andy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/message.h>
#import "AndyPaly.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Hello, World!");
        AndyPaly *andy = [AndyPaly new];
        
        Ivar ivar = class_getInstanceVariable([andy class], "ivar_str");
        NSString *str = object_getIvar(andy, ivar);
        NSLog(@"成员变量名：str:%@",str);
        
        unsigned int propertyCount;
        objc_property_t *propertys =class_copyPropertyList([andy class], &propertyCount);
        for (int i = 0; i < propertyCount; i++) {
            objc_property_t property = propertys[i];
            const char *name = property_getName(property);
            for (int j= 0; j < strlen(name); j++) {
//                NSLog(@"%c",name[j]);
            }
            NSLog(@"属性名：name:%s",name);
//            NSString *nameStr = [NSString stringWithCString:name encoding:NSUTF8StringEncoding];
//            NSLog(@"nameStr:%@",nameStr);
        }
        free(propertys);
        
        unsigned int methodCount;
        Method *methods = class_copyMethodList([andy class], &methodCount);
        for (int i = 0; i < methodCount; i ++) {
            SEL name = method_getName(methods[i]);
            NSLog(@"实例方法名:%@",NSStringFromSelector(name));
        }
        free(methods);
        
        
    }
    return 0;
}
