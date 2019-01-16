//
//  GHCustomStack.h
//  Day0102
//
//  Created by whwswswws on 2019/1/16.
//  Copyright © 2019 whwswswws. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GHCustomStack : NSObject

-(void)pushObject:(id)object;

-(id)popObject;

-(NSInteger)getMin;

@end

NS_ASSUME_NONNULL_END
