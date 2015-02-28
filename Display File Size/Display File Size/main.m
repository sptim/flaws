#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  
  /*** BEGIN ***/
  
  NSFileManager *manager=[NSFileManager defaultManager];
  
  NSDictionary *mydic;
  if((mydic=[manager attributesOfItemAtPath:@"/etc/hosts" error:NULL])==nil){
    NSLog(@"could not get file attributes");
    return 4;
  }
  else{
    NSLog(@"Size %i bytes", [[mydic objectForKey:NSFileSize]intValue]);
  }
  /*** END ***/
  
  [pool drain];
  return 0;
}
