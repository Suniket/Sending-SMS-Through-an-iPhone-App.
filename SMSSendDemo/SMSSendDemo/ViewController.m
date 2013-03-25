//
//  ViewController.m
//  SMSSendDemo
//
//  Created by Kapil Chopra on 3/20/13.
//  Copyright (c) 2013 Suniket Wagh. All rights reserved.
//

#import "ViewController.h"
#import <MessageUI/MessageUI.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    MFMessageComposeViewController *controller = [[MFMessageComposeViewController alloc] init] ;
    [controller setDelegate:self];
}

- (IBAction)sendSms:(id)sender {
    MFMessageComposeViewController *controller = [[MFMessageComposeViewController alloc] init] ;
	if([MFMessageComposeViewController canSendText])
	{
		controller.body = @"Hello from Suniket";
		controller.recipients = [NSArray arrayWithObjects:@"Recipient1", @"Recipient2", nil];
		controller.messageComposeDelegate = self;
        [self presentViewController:controller animated:YES completion:nil];
	}
    
}

- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result
{
	switch (result) {
		case MessageComposeResultCancelled:
			NSLog(@"Cancelled");
			break;
            
		case MessageComposeResultFailed:
            NSLog(@"Failed");


			break;
		case MessageComposeResultSent:
            
            NSLog(@"Sent");

			break;
		default:
			break;
	}
    
    [self dismissViewControllerAnimated:YES completion:Nil];
}
@end
