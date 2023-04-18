//
//  NSLayoutConstraint+IBDesignable.h
//  BYFamily
//
//  Created by 田云龙 on 2019/5/21.
//  Copyright © 2019 田云龙. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSLayoutConstraint (IBDesignable)
@property (nonatomic, assign) IBInspectable BOOL adapterScreenW;
@property (nonatomic, assign) IBInspectable BOOL adapterScreenH;
@end

NS_ASSUME_NONNULL_END
