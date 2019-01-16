//
//  GHStack.h
//  Day0102
//
//  Created by whwswswws on 2019/1/16.
//  Copyright © 2019 whwswswws. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 定义block
 @param obj 回调值
 */
typedef void(^GHStackBlock)(id obj);

@interface GHStack : NSObject
/**
 入栈
 @param obj 指定入栈对象
 */
- (void)push:(id)obj;

/**
 出栈
 */
- (id)popObj;

/**
 是否为空
 */
- (BOOL)isEmpty;

/**
 栈的长度
 */
- (NSInteger)stackLength;

/**
 从栈底开始遍历
 @param block 回调遍历的结果
 */
-(void)enumerateObjectsFromBottom:(GHStackBlock)block;

/**
 从顶部开始遍历
 */
-(void)enumerateObjectsFromtop:(GHStackBlock)block;

/**
 所有元素出栈，一边出栈一边返回元素
 */
-(void)enumerateObjectsPopStack:(GHStackBlock)block;

/**
 清空
 */
-(void)removeAllObjects;

/**
 返回栈顶元素
 */
-(id)topObj;
/**
 返回栈最小元素
 */
-(id)getMin;
@end

NS_ASSUME_NONNULL_END
