//
//  ViewController.h
//  SMSSendDemo
//
//  Created by Kapil Chopra on 3/20/13.
//  Copyright (c) 2013 Suniket Wagh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface ViewController : UIViewController <MFMessageComposeViewControllerDelegate,UINavigationControllerDelegate,UIAlertViewDelegate>

- (IBAction)sendSms:(id)sender;
@end
