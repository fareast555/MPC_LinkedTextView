<h3>MPC_LinkedTextView</h3>
An Objective-C demo app with a custom textview cell that is ready to display link-embedded text. Your system will handle clicks automatically. Easy peasy

![Example links (the emoji are also linked)](https://github.com/fareast555/MPC_LinkedTextView/blob/master/screen.jpg)


## Requirements

* iOS 10.3+
* ARC

## Installation

Download this repo

To use just the text view in your own nibs / storyboards etc, copy the MPC_LinkedTextView{.h/.m} files into your project.

If you need a custom UITableViewCell to show linked text, also copy the MPC_LinkedTextViewCell {.h/.m/.xib} files. Remember to register the nib file in your UITableView subclass before using these cells. 

 
<h3>To use:</h3>
<h4>As a standalone textview subclass:</h4>

  1. In a xib or storyboard, set the MPC_LinkedTextView as the custom class of your UITextView object in the Identity Inspector.
 
  2. Create an outlet: 

  ```objectivec
  @property (weak, nonatomic) IBOutlet MPC_LinkedTextView *linkedTextView;
```
2. Call the public method: 

  ```objectivec
   updateTextViewWithFullText: linkTriggerText: linkURLString:
```

<h4>Within the MPC_LinkedTextViewCell:</h4>

  1. Register the nib as shown in LinkedTableViewController

  2. After instantiating a cell, set the text via the .linkedTextView property of the MPC_LinkedTextViewCell

  ```objectivec
  MPC_LinkedTextViewCell *cell = [table dequeueReusableCellWithIdentifier:[MPC_LinkedTextViewCell reuseID] forIndexPath:path];

  [cell.linkedTextView updateTextViewWithFullText:@"For the best pizza in Thailand, try New York Pizza House" linkTriggerText:@"New York Pizza House" linkURLString:@"https://www.newyorkpizza.co.th"];
```

  3. Dig into MPC_LinkedTextView.m to customize how the textView appears visually and spacially.
