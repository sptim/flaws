#import "ViewController.h"

@implementation ViewController
@synthesize textView;

#pragma mark - View lifecycle

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

-(IBAction)save:(id)sender {
  NSString *path=[NSString stringWithFormat:@"%@/Documents/text.txt", NSHomeDirectory()];
  [self.textView.text writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:nil];
}

-(IBAction)load:(id)sender {
  NSString *path=[NSString stringWithFormat:@"%@/Documents/text.txt", NSHomeDirectory()];
  self.textView.text=[NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
}

@end
