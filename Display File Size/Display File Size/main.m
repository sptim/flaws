#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  
  /*** BEGIN ***/
  
  NSFileManager *fileManager=[NSFileManager defaultManager];
  
  NSError *error;
  NSDictionary *fileAttributes=[fileManager attributesOfItemAtPath:@"/etc/hosts"
                                                             error:&error];
  if(fileAttributes==nil){
    NSLog(@"%@",error.localizedDescription);
    return 4;
  }
  else{
    NSLog(@"Size %llu bytes", fileAttributes.fileSize);
  }
  /*** END ***/
  
  [pool drain];
  return 0;
}
