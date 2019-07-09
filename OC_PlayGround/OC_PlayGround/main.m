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
#include <dlfcn.h>

int *twoSum(int* nums, int numsSize, int target, int* returnSize){
    static int a[2] = {0};
    for (int i = 0; i < numsSize; i++) {
        for (int j = i + 1; j < numsSize; j++) {
            if (nums[i] + nums[j] == target) {
                a[0] = i;
                a[1] = j;
                return a;
            }
        }
    }
    return 0;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Hello, World!");
        AndyPaly *andy = [AndyPaly new];
        
        Ivar ivar = class_getInstanceVariable([andy class], "ivar_str");
        NSString *str = object_getIvar(andy, ivar);
        NSLog(@"成员变量值：str:%@",str);
        
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
        
        SEL sell = @selector(publicMethod:);
        NSLog(@"publicMethod:%p",sell);
        
        float a[] = {1.0, 2.0, 3.0};
        NSLog(@"array encoding type: %s", @encode(typeof(a)));
        
        unsigned int o = 1;
        
        char *a1 = "123";
        char *a2 = "456";
        char *a3 = "789";
        char dest[100] = {};
        memcpy(dest, a1, 3);
        memcpy(dest + 3, a2, 3);
        printf("dest:%s len:%lu \n ",dest,sizeof(o));
        
        int si[7] = {1,2,3,4,5,6,7};
        int *s2 = si;
        
        
        printf("s2:%c \n",s2[6]);
        
        
        
        int sum[5] = {1,2,3,4,5};
        int *res;
        res = twoSum(sum, 5, 7, NULL);
        NSLog(@"res:%d,%d",res[0],res[1]);
        
        
        
    }
    
    
    return 0;
    
}


