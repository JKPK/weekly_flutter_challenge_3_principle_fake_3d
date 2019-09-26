# weekly_flutter_challenge_3_principle_fake_3d

The aim of this challenge is to recreate the behaviour of principle fake 3D design by Egg_Kim:
https://dribbble.com/shots/7176005-principle-fake-3D

## What I have learned during this challenge:
1. Blurring images by putting [BackdropFilter](https://www.youtube.com/watch?v=dYRs7Q1vfYI) widget above it in a stack.
2. Using PageView widget:
* Changing [scrollDirection](https://medium.com/flutter-community/a-deep-dive-into-pageview-in-flutter-with-custom-transitions-581d9ea6dded),
* Manually strolling to a given page,
* Changing physics.
3. Using [GestureDetector](https://flutter.dev/docs/cookbook/gestures/handling-taps) to make a Widget tappable and to catch panning.
4. Using [MultiProvider](https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple#changenotifierprovider) and  [ChangeNotifierProvider](https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple#changenotifierprovider) from [Privider](https://pub.dev/packages/provider) package. Along with creating custom ChangeNotifier.
* And accessing it by using ```Consumer<MyCustomNotifier>```.
* And also accessing it by using ```Provider.of<MyCustomNotifier>(context)```.
5. Modifying TextStyle by using ```.copyWith()``` method.
6. Modifying text line spacing by using TextStyle height property.
7. [Adding shadow to a TextStyle](https://owenhalliday.co.uk/shadows/).
8. [Two new widgets](https://stackoverflow.com/questions/55430842/flutter-absorbpointer-vs-ignorepointer-difference): [IgnorePointer](https://api.flutter.dev/flutter/widgets/IgnorePointer-class.html) and [AbsorbPointer](https://api.flutter.dev/flutter/widgets/AbsorbPointer-class.html).
9. Adding gradient by using [LinearGradient](https://api.flutter.dev/flutter/painting/LinearGradient-class.html) as a [BoxDecoration](https://api.flutter.dev/flutter/painting/BoxDecoration-class.html) gradient parameter.

## Original design - click to see video
[![Original design](https://github.com/JKPK/weekly_flutter_challenge_3_principle_fake_3d/blob/master/original_design.png?raw=true)](https://dribbble.com/shots/7176005-principle-fake-3D)

## Challenge result - click to see video
[![Challenge result](https://github.com/JKPK/weekly_flutter_challenge_3_principle_fake_3d/blob/master/challenge_result.png?raw=true)](https://youtu.be/WURwh-Z2uao)


## Credits
[Front mountain photo](https://unsplash.com/photos/Sa7787z58VQ) by [Marco Bonomo](https://unsplash.com/@radel?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)

[Back mountain photo](https://unsplash.com/photos/9wg5jCEPBsw) by [Rohit Tandon](https://unsplash.com/@rohittandon?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)

[Cloud image](https://www.stickpng.com/img/nature/clouds/small-single-cloud) from [Stick PNG](https://www.stickpng.com)
