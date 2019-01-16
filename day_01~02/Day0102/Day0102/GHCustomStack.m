//
//  GHCustomStack.m
//  Day0102
//
//  Created by whwswswws on 2019/1/16.
//  Copyright © 2019 whwswswws. All rights reserved.
//

#import "GHCustomStack.h"
#import "GHStack.h"

@interface GHCustomStack()
@property(nonatomic,strong)GHStack *stackData;
@property(nonatomic,strong)GHStack *stackMin;

@end

@implementation GHCustomStack
-(GHStack *)stackData{
    if (!_stackData) {
        _stackData  = [[GHStack alloc]init];
    }
    return _stackData;
}

-(GHStack *)stackMin{
    if (!_stackMin) {
        _stackMin  = [[GHStack alloc]init];
    }
    return _stackMin;
}

-(void)pushObject:(id)object{
    if (![object isKindOfClass:[NSNumber class]]) {
        return;
    }
    NSInteger object_Index = [object integerValue];
    if ([self.stackMin isEmpty]) {
        [self.stackMin push:object];
    }else if (object_Index<=[self getMin]){
        [self.stackMin push:object];
    }
    [self.stackData push:object];
}
-(id)popObject{
    if ([self.stackData isEmpty]) {
        return nil;
    }
    NSNumber *popObject = [self.stackData popObj];
    if ([popObject integerValue]==[self getMin]) {
        [self.stackMin popObj];
    }
    return popObject;
}

-(NSInteger)getMin{
    if ([self.stackMin isEmpty]) {
        return -1;
    }
    return [[self.stackMin getMin] integerValue];
}
@end
