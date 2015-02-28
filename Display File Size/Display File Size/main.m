#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  
  /*** BEGIN ***/
  
  NSFileManager *fileManager=[NSFileManager defaultManager];
  
  NSDictionary *fileAttributes=[fileManager attributesOfItemAtPath:@"/etc/hosts"
                                                             error:NULL];
  if(fileAttributes==nil){
    NSLog(@"could not get file attributes");
    return 4;
  }
  else{
    NSLog(@"Size %i bytes", [[fileAttributes objectForKey:NSFileSize]intValue]);
  }
  /*** END ***/
  
  [pool drain];
  return 0;
}
