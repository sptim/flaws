# Flaws in Tutorials, Screencasts, and Samplecode

NSConference 7 Blitz Talk  
Tim Mecking (@sptim)

## Disclaimer

All code examples are real world examples. I do not want to blame the authors
and therefore don’t tell the source of any example. Overall those guys do a
fantastic job in teaching Cocoa / CocoaTouch.

## Code Examples / Slides / Readme

Each example is on a different branch. On the main branch there is this Readme
file and the slides as a PDF document.

## Summary of the Talk

### Things to avoid

- Undocumented Tricks / Shortcuts
	- Relying on Filesystem Hierarchy (or View Hierarchy)
- Non HIG Compliant UI
- Reimplementing Functionality already provided by the system

### Naming Rules & Conventions

- Follow Apple’s “Coding Guidelines for Cocoa”
- Always choose verbose & descriptive names
- Prefixing class names is recommended
	- 2 letter prefixes are reserved for Apple Frameworks. Use 3 or more uppercase letters.
- Never omit a prefix in a category method of a class you don’t control
	- Use lowercase letters and a underscore as prefix.

### Missing Topics 

- Testing
- Discussion on Designated Initializers
- Special Cases in Subclassing
	- Class Clusters
	- Delegates or other classes implementing an interface with optional methods

## Links

- [Coding Guidelines for Cocoa](https://developer.apple.com/library/ios/documentation/Cocoa/Conceptual/CodingGuidelines/CodingGuidelines.pdf)
- [API Design for Cocoa and Cocoa Touch WWDC 2010](https://developer.apple.com/videos)
