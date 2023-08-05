## Features

Vertical scroll view with tabbar.  
Automatically change tabbar index when scroll view is scrolled.   
And also, when tap tabbar item, scroll view will be scrolled to the top of the tabbar index.   

![Simulator Screen Recording - iPhone 14 Pro - 2023-08-05 at 20 41 41](https://github.com/sejun2/vertical_scroll_tabbar/assets/33044667/44a398b9-b9bd-4b5f-857d-46840c42d3aa)


## Usage

```dart
VerticalScrollTabbar([Simulator Screen Recording - iPhone 14 Pro - 2023-08-05 at 20.31.57.mp4](..%2F..%2FDesktop%2FSimulator%20Screen%20Recording%20-%20iPhone%2014%20Pro%20-%202023-08-05%20at%2020.31.57.mp4)
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
