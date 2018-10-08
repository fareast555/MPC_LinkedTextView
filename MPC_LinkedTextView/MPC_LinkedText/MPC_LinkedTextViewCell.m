//
//  MPC_LinkedTextViewCell.m
//  ElectLiberalUSA
//
//  Created by Michael Critchley on 2018/09/26.
//  Copyright © 2018 Michael Critchley. All rights reserved.
//

#import "MPC_LinkedTextViewCell.h"

@implementation MPC_LinkedTextViewCell

+ (NSString *)nibName {
    return NSStringFromClass([self class]);
}
+ (NSString *)reuseID {
    return [NSString stringWithFormat:@"%@ReuseID", NSStringFromClass([self class])];
}


@end
