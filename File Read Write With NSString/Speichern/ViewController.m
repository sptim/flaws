#import "ViewController.h"

@implementation ViewController
@synthesize textView;

#pragma mark - View lifecycle

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

/*** BEGIN ***/

  -(NSString*)filePath {
    NSArray* folderPaths=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,
                                                             NSUserDomainMask,
                                                             YES);
    NSString* folderPath=[folderPaths firstObject];
    NSString* filePath=[folderPath stringByAppendingPathComponent:@"text.txt"];
    return filePath;
  }
/*** END ***/

/*** BEGIN ***/

  -(IBAction)save:(id)sender {
    [self.textView.text writeToFile:self.filePath
                         atomically:YES
                           encoding:NSUTF8StringEncoding
                              error:nil];
  }
  -(IBAction)load:(id)sender {
    self.textView.text=[NSString stringWithContentsOfFile:self.filePath
                                                 encoding:NSUTF8StringEncoding
                                                    error:nil];
  }
/*** END ***/
@end
