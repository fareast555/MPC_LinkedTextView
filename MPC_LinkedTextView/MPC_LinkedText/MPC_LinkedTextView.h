//
//  LinkedTextView.h
//  MPC_UniversalModalWebView
//
//  Created by Michael Critchley on 2018/09/26.
//  Copyright © 2018 Michael Critchley. All rights reserved.


//This class creates a tappable link in a UITextView. On tap, the user is taken away from the app and the link is shown in Safari.

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MPC_LinkedTextView : UITextView

/**
 Generic method that will set some text in the view as linkable, which the system will automatically handle.
 
 @param fullText The full text to show
 @param triggerText A substring from 'full text' that you want to show as a link trigger.
 @param urlString The URL to open (ex. @"https://www.newyorkpizza.co.th"
*/
- (void)updateTextViewWithFullText:(NSString *)fullText linkTriggerText:(NSString *)triggerText linkURLString:(NSString *)urlString;

//Pre-packaged strings and links
- (void)displaySignUpButtonPrivacyPolicy;
- (void)displayLoggedInPrivacyPolicy;


@end

NS_ASSUME_NONNULL_END
