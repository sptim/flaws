//
//  main.swift
//  Display File Size
//
//  Created by Tim Mecking on 28/02/15.
//  Copyright (c) 2015 Tim Mecking. All rights reserved.
//

import Foundation

/*** BEGIN ***/

  let fileManager=NSFileManager.defaultManager()

  var error:NSError?
  if let fileAttributes=fileManager.attributesOfItemAtPath("/etc/hosts",
                                                           error:&error) {
    println("Size \(fileAttributes[NSFileSize]!) bytes")
  }
  else {
    println(error!.localizedDescription)
    exit(4)
  }
/*** END ***/

  