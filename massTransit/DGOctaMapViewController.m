//
//  DGOctaMapViewController.m
//  massTransit
//
//  Created by Campus User on 11/6/13.
//  Copyright (c) 2013 gamda. All rights reserved.
//

#import "DGOctaMapViewController.h"
#import "PDFScrollView.h"

@interface DGOctaMapViewController ()

@end

@implementation DGOctaMapViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    /*
     Open the PDF document, extract the first page, and pass the page to the PDF scroll view.
     */
    NSURL *pdfURL = [[NSBundle mainBundle] URLForResource:@"octa_sysmapoct13" withExtension:@"pdf"];
    
    CGPDFDocumentRef PDFDocument = CGPDFDocumentCreateWithURL((__bridge CFURLRef)pdfURL);
    
    CGPDFPageRef PDFPage = CGPDFDocumentGetPage(PDFDocument, 1);
    [(PDFScrollView *)self.view setPDFPage:PDFPage];
    
    CGPDFDocumentRelease(PDFDocument);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
