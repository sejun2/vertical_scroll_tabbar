## Features

Vertical scroll view with tabbar.  
Automatically change tabbar index when scroll view is scrolled.   
And also, when tap tabbar item, scroll view will be scrolled to the top of the tabbar index.   

[vst.webm](https://github.com/sejun2/vertical_scroll_tabbar/assets/33044667/37f2c2f6-c6db-4bee-a0c8-2f82a0268327)


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
 | width | double? | Width of the entire tabbar       | false | null |
 | height | double? | Height of the entire tabbar       | false | null |


## Requirements
 - `tabs` and `children` must have same length.    
 - children must have `GlobalKey` as key Property
