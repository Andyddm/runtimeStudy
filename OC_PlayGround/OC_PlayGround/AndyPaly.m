//
//  AndyPaly.m
//  OC_PlayGround
//
//  Created by Andy on 2019/6/27.
//  Copyright © 2019 Andy. All rights reserved.
//

#import "AndyPaly.h"

@interface AndyPaly(){
    @private NSString *ivar_str;
}
@property (nonatomic, strong)NSString *im_str;

- (NSString *)privateMethod:(NSArray *)arr;

@end

@implementation AndyPaly

-(instancetype)init{
    self = [super init];
    if (self) {
        self->ivar_str = @"ivar_——————";
    }
    return self;
}

- (void)publicMethod:(NSString *)str{
    void(^action)(void);
    
}

- (NSString *)privateMethod:(NSArray *)arr{
    return @"privateMethod";
}


@end
