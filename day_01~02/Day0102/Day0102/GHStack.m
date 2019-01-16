//
//  GHStack.m
//  Day0102
//
//  Created by whwswswws on 2019/1/16.
//  Copyright © 2019 whwswswws. All rights reserved.
//

#import "GHStack.h"

@interface GHStack ()
// 存储栈数据
@property (nonatomic, strong) NSMutableArray *stackArray;

@end

@implementation GHStack

- (void)push:(id)obj {
    [self.stackArray addObject:obj];
}

- (id)popObj {
    if ([self isEmpty]) {
        return nil;
    } else {
        return self.stackArray.lastObject;
    }
}

- (BOOL)isEmpty {
    return !self.stackArray.count;
}

- (NSInteger)stackLength {
    return self.stackArray.count;
}

-(void)enumerateObjectsFromBottom:(GHStackBlock)block {
    [self.stackArray enumerateObjectsWithOptions:NSEnumerationConcurrent usingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        block ? block(obj) : nil;
    }];
}

-(void)enumerateObjectsFromtop:(GHStackBlock)block {
    [self.stackArray enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        block ? block(obj) : nil;
    }];
}

-(void)enumerateObjectsPopStack:(GHStackBlock)block {
    __weak typeof(self) weakSelf = self;
    NSUInteger count = self.stackArray.count;
    for (NSUInteger i = count; i > 0; i --) {
        if (block) {
            block(weakSelf.stackArray.lastObject);
            [self.stackArray removeLastObject];
        }
    }
}
-(id)getMin{
    
    NSNumber *returnResult;
    for (NSNumber *number in self.stackArray) {
        if (!returnResult) {
            returnResult = number;
        }else{
            if ([returnResult integerValue]>[number integerValue]) {
                returnResult = number;
            }
        }
       
    }
    return returnResult;
}
-(void)removeAllObjects {
    [self.stackArray removeAllObjects];
}

-(id)topObj {
    if ([self isEmpty]) {
        return nil;
    } else {
        return self.stackArray.lastObject;
    }
}

- (NSMutableArray *)stackArray {
    if (!_stackArray) {
        _stackArray = [[NSMutableArray alloc]initWithCapacity:0];
    }
    return _stackArray;
}
@end
