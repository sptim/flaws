#import "ViewController.h"

@implementation ViewController
@synthesize textView;

- (void)viewDidLoad {
  [super viewDidLoad];
  [self load:nil];
  [[NSNotificationCenter defaultCenter] addObserver:self
                                           selector:@selector(save:)
                                               name:@"allesSpeichern"
                                             object:nil];
}

- (void)viewDidUnload {
  [self setTextView:nil];
  [super viewDidUnload];
  [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
  // Return YES for supported orientations
  return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

/*** BEGIN ***/

  -(void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem=self.editButtonItem;
    [self load:self];
  }
  -(void)setEditing:(BOOL)editing animated:(BOOL)animated {
    [super setEditing:editing animated:animated];
    if(editing) {
      [self.textView becomeFirstResponder];
    }
    else {
      [self.textView resignFirstResponder];
    }
  }
/*** END ***/

/*** BEGIN ***/

  -(void)textViewDidBeginEditing:(UITextView *)textView {
    self.editing=YES;
  }
  -(void)textViewDidChange:(UITextView *)textView {
    self.navigationItem.leftBarButtonItem=self.undoButtonItem;
  }
  -(void)textViewDidEndEditing:(UITextView *)textView {
    self.editing=NO;
    [self save:self];
  }
/*** END ***/


-(NSString*)filePath {
  NSArray* folderPaths=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,
                                                           NSUserDomainMask,
                                                           YES);
  NSString* folderPath=[folderPaths firstObject];
  NSString* filePath=[folderPath stringByAppendingPathComponent:@"text.txt"];
  return filePath;
}

/*** BEGIN ***/

  -(IBAction)save:(id)sender {
    [self.textView.text writeToFile:self.filePath
                         atomically:YES
                           encoding:NSUTF8StringEncoding
                              error:nil];
    self.navigationItem.leftBarButtonItem=nil;
  }
  -(IBAction)load:(id)sender {
    self.textView.text=[NSString stringWithContentsOfFile:self.filePath
                                                 encoding:NSUTF8StringEncoding
                                                    error:nil];
    self.navigationItem.leftBarButtonItem=nil;
  }
/*** END ***/
@end
