#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextViewDelegate>
@property (strong, nonatomic) IBOutlet UIBarButtonItem* undoButtonItem;
@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (readonly, nonatomic) NSString* filePath;
- (IBAction)save:(id)sender;
- (IBAction)load:(id)sender;

@end
