## Features

Vertical scroll view with tabbar.  
Automatically change tabbar index when scroll view is scrolled.   
And also, when tap tabbar item, scroll view will be scrolled to the top of the tabbar index.   

![Simulator Screen Recording - iPhone 14 Pro - 2023-06-04 at 03 56 44](https://github.com/sejun2/vertical_scroll_tabbar/assets/33044667/75c607a0-503a-444a-82a2-e3de90a82573)

## Usage

```dart
VerticalScrollTabbar(
    tabs: [...],
    children: [...],
);
```

## Parameters

| Parameter | Type         | Description                            | Required | Default |
| --- |--------------|----------------------------------------|----------|--------|
| tabs | List<Widget> | Tabbar items                           | false | |
| children | List<Widget> | Scroll view items                      | false | |
 | isScrollable | bool         | Whether the tab bar is scrollable.     | false | false|
 | indicatorColor | Color       | The color of selected tab's underline. | false | |
 | onTabChanged | Function(int index) | Called when tab index is changed       | false | |


## Requirements
 - `tabs` and `children` must have same length.    
 - children must have `GlobalKey` as key Property
