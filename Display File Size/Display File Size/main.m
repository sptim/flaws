#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    NSString *testerfile = @"testerfile";
    NSFileManager *manager;
    //create a file manager
    manager = [NSFileManager defaultManager];
    //make sure that the file exists
    if([manager fileExistsAtPath:testerfile]==NO){
        NSLog(@"File does not exist!");
        return 1;
    }
    //make a copy of the file
    if([manager copyItemAtPath: testerfile toPath: @"newfile" error:NULL]==NO){
        NSLog(@"can not COPY the file");
        return 2;
    }
    //rename the copy
    if([manager moveItemAtPath: @"newfile" toPath: @"newfile2" error:NULL]==NO){
        NSLog(@"Cano not rename the file");
        return 3;
    }
    
    
    //get size of the file
    NSDictionary *mydic;
    if((mydic=[manager attributesOfItemAtPath:@"newfile2" error:NULL])==nil){
        NSLog(@"could not get file attributes");
        return 4;
    }else{
        NSLog(@"File is %i bytes", [[mydic objectForKey:NSFileSize]intValue]);
    }
    
    [pool drain];
    return 0;
}
