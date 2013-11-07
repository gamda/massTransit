//
//  ViewController.m
//  PDFScrollViewDemo2
//
//  Created by Michael Shafae on 10/22/12.
//  Copyright (c) 2012 Michael Shafae. All rights reserved.
//

#import "PDFScrollViewController.h"
#import "PDFScrollView.h"

@interface PDFScrollViewController ()

@end

@implementation PDFScrollViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
      return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
  } else {
      return YES;
  }
}

@end
