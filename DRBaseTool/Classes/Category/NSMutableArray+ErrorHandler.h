//
//  NSMutableArray+ErrorHandler.h
//  81FamilyExamination
//
//  Created by 田云龙 on 2019/12/12.
//  Copyright © 2019 田云龙. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableArray (ErrorHandler)

- (void)removeObjectAtSafeIndex:(NSUInteger)index;

@end

NS_ASSUME_NONNULL_END
