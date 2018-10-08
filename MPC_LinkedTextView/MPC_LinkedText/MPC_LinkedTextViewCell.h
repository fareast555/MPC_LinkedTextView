//
//  MPC_LinkedTextViewCell.h
//  ElectLiberalUSA
//
//  Created by Michael Critchley on 2018/09/26.
//  Copyright © 2018 Michael Critchley. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MPC_LinkedTextView.h"

NS_ASSUME_NONNULL_BEGIN

@interface MPC_LinkedTextViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet MPC_LinkedTextView *linkedTextView;

+ (NSString *)nibName;
+ (NSString *)reuseID;


@end

NS_ASSUME_NONNULL_END
