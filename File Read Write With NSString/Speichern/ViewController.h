#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (readonly, nonatomic) NSString* filePath;
- (IBAction)save:(id)sender;
- (IBAction)load:(id)sender;

@end
