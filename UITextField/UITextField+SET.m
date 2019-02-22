//
//  UITextField+SET.m
//  UITextField
//
//  Created by Mac on 2019/2/22.
//  Copyright © 2019 Mac. All rights reserved.
//

#import "UITextField+SET.h"

@implementation UITextField (SET)

//选择我们需要的权限打开 - 这样可以有效的控制不必要的权限使用
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    
    if (self.tag == 100) {
        //此处我们选择打开粘贴功能、其他功能都禁用
        if (action == @selector(paste:))
            return YES;
    }else if (self.tag == 101){
        //此处我们选择打开选择、全选、复制功能、其他功能都禁用
        if (action == @selector(copy:) || action == @selector(select:) || action == @selector(selectAll:))
            return YES;
    }
    
    return NO;
}


@end
