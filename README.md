
## Features

Vertical scroll view with tabbar.  
Automatically change tabbar index when scroll view is scrolled.   
And also, scroll view is scrolled when tabbar index is changed.   

![Simulator Screen Recording - iPhone 14 Pro - 2023-06-04 at 03 56 44](https://github.com/sejun2/vertical_scroll_tabbar/assets/33044667/75c607a0-503a-444a-82a2-e3de90a82573)

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
