
## Features

Vertical scroll view with tabbar.  
Automatically change tabbar index when scroll view is scrolled.   
And also, scroll view is scrolled when tabbar index is changed.   

![Simulator Screen Recording - iPhone 14 Pro - 2023-06-04 at 03.56.44.gif](..%2F..%2FDesktop%2FSimulator%20Screen%20Recording%20-%20iPhone%2014%20Pro%20-%202023-06-04%20at%2003.56.44.gif)

## Usage

```dart
VerticalScrollTabbar(
    tabs: [...],
    children: [...],
);
```

# Prerequisite
 - `tabs` and `children` must have same length.    
 - children must have `GlobalKey` as key Property