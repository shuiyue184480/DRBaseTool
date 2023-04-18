//
//  NSLayoutConstraint+IBDesignable.m
//  BYFamily
//
//  Created by 田云龙 on 2019/5/21.
//  Copyright © 2019 田云龙. All rights reserved.
//

#import "NSLayoutConstraint+IBDesignable.h"
#import <objc/runtime.h>
#define AdaptW(floatValue) (floatValue *([UIScreen mainScreen].bounds.size.width / 375.0))

@implementation NSLayoutConstraint (IBDesignable)

static char  * AdapterScreenW  = "adapterScreenW";
static char  * AdapterScreenH  = "adapterScreenH";
- (BOOL)adapterScreenW{
    NSNumber *number = objc_getAssociatedObject(self, AdapterScreenW);
    return number.boolValue;
}

- (void)setAdapterScreenW:(BOOL)adapterScreenW{
    NSNumber * number = @(adapterScreenW);
    objc_setAssociatedObject(self, AdapterScreenW, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    if (adapterScreenW) {
        self.constant = AdaptW(self.constant);
    }
}
- (BOOL)adapterScreenH{
    NSNumber *number = objc_getAssociatedObject(self, AdapterScreenH);
    return number.boolValue;
}

- (void)setAdapterScreenH:(BOOL)adapterScreenH{
    NSNumber * number = @(adapterScreenH);
    objc_setAssociatedObject(self, AdapterScreenH, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    if (adapterScreenH) {
        self.constant = AdaptW(self.constant);
    }
}

@end
