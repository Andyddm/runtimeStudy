//
//  AndyPaly.h
//  OC_PlayGround
//
//  Created by Andy on 2019/6/27.
//  Copyright © 2019 Andy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AndyPaly : NSObject

@property (nonatomic, strong)NSArray *im_arr;
@property (nonatomic, strong)NSDictionary *im_dic;

- (void)publicMethod:(NSString *)str;

@end

NS_ASSUME_NONNULL_END
