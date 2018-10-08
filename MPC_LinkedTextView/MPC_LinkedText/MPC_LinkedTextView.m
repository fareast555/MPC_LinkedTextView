//
//  LinkedTextView.m
//  MPC_UniversalModalWebView
//
//  Created by Michael Critchley on 2018/09/26.
//  Copyright © 2018 Michael Critchley. All rights reserved.
//

#import "MPC_LinkedTextView.h"
@interface MPC_LinkedTextView()<UITextViewDelegate>

@end

@implementation MPC_LinkedTextView

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if ((self = [super initWithCoder:aDecoder])) {
        [self _configureTextView];
    }
    return self;
}

#pragma mark - Public
- (void)displaySignUpButtonPrivacyPolicy
{
     [self updateTextViewWithFullText:@"By clicking Sign up, you agree that you have read our privacy policy." linkTriggerText:@"privacy policy" linkURLString:@"http://www.latitudeios.com/electblueprivacy"];
}

- (void)displayLoggedInPrivacyPolicy
{
    [self updateTextViewWithFullText:@"Read our data use privacy policy." linkTriggerText:@"privacy policy" linkURLString:@"http://www.latitudeios.com/electblueprivacy"];
}

- (void)updateTextViewWithFullText:(NSString *)fullText linkTriggerText:(NSString *)triggerText linkURLString:(NSString *)urlString
{
    //Create a mutable string based on the full text
    NSMutableAttributedString *aStr = [[NSMutableAttributedString alloc]initWithString:fullText attributes:nil];
    
    //Add the link attribute across the range of the target text
    [aStr addAttribute:NSLinkAttributeName value:urlString range:[fullText rangeOfString:triggerText]];
    
    //Add any other font or color bling as needed
    [aStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:18 weight:UIFontWeightMedium] range:NSMakeRange(0, [fullText length])];
    
    //Set the mutable text to the textfield
    [self setAttributedText:aStr];
}

#pragma mark - Configure
- (void)_configureTextView
{
    self.delegate = self;
    [self setSelectable:YES];
    [self setEditable:NO];
    [self setScrollEnabled:NO];
    [self setUserInteractionEnabled:YES];
    [self setDataDetectorTypes:UIDataDetectorTypeLink];
    self.scrollIndicatorInsets = UIEdgeInsetsZero;
    self.contentOffset = CGPointZero;
    self.textContainerInset = UIEdgeInsetsMake(12, 10, 10, 10);

    
    [self layoutIfNeeded];
}

#pragma mark - UITextViewDelegate
- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange interaction:(UITextItemInteraction)interaction
{
    return YES;
}

- (BOOL)textViewShouldBeginEditing:(UITextView *)textView
{
    return NO;
}


@end
