1. vs code(Code editor)- no dev tools
2. Intellij IDEA(" + IDE(Dev tool available))
3. Jetbens are famous for IDE Development.
4. Flutter is a framework(Building) and Dart(Build bananor jonno materials gula) is programming language.

# SDK

Think of the Flutter SDK like (**a box of tools**) that includes everything you need to make beautiful apps:
1. Pre-built widgets (buttons, text fields, etc.)
2. Graphics engine to draw UI
3. Tools to test and run apps
4. Dart programming language (used to write Flutter apps)

_Full state change=> hot restart, je change ta instant dekhte chacchi=> hot reload_
_AOT->Ahead of time->AOT compilation->hot restart, JIT->Just in time->JIT compilation->hot reload_

**JIT (Just-in-Time) Compilation**
-Used in development
-Compiles code while the app is running
-Faster reloads (Hot Reload)
-Helps during testing and debugging
Example:
When you're building your Flutter app and use Hot Reload, that’s JIT working.

**AOT (Ahead-of-Time) Compilation**
-Used in production (release mode)
-Compiles the code before running the app
-Results in faster app startup and better performance
-Code is harder to reverse engineer
   Example:
   When you run this command:
   _flutter build apk_
It compiles the app using AOT to make it ready for the Play Store.

**Summary:**
   Type	 When Used	          Benefit	                         Example
   JIT	 During development	  Fast testing (hot reload)	         flutter run
   AOT	 For release	      Fast app + secure code	         flutter build apk

# Widget life cycle

   StatelessWidget: Only has build(). No lifecycle.
   StatefulWidget: Has full lifecycle because its UI can change.

1. createState()->Called once when the widget is created, Creates the State object.(@override State<MyWidget> createState() => _MyWidgetState();)
2. initState()->Called once when the State is inserted into the widget tree, Use it to initialize data, start animations, etc. When a StatefulWidget appears on the screen for the first time, Flutter calls initState() before anything else — even before build(). 
3. build()->Called every time UI needs to be updated, Returns the UI of the widget.
4. didUpdateWidget()->Called when the parent widget changes and needs to update this widget. It is called when the parent widget (like MyApp) rebuilds and passes new data to the StatefulWidget (like MyHomePage), causing it to update.
5. dispose()->Called when the widget is removed from the tree, Clean up (e.g., close streams, controllers). 
   
# Android Folder

_analysis_option.yaml-> Code er vhul bahir korte use hoy.
test-> code gula right/wrong sheta test kora jay. UI test, Unit test, Widget test, Integration test._

## Note

_var-> use korbo jokhon amra ekta variable er data type jani na._
_dynamic-> variable er value porobortite change kora jay. jeta var e jay na. Json format data er jonno ata use korbo._
_const-> shathe shathe value diye dite hobe.(compile time value)_
_Final (run time value)_

# Git

-git add
-git commit
-muluto amra origin(remote) e push kori . origin er default branch master
-git merge demo2(jar shathe merge korbo)
`Note- amra jokhon merge korbo 1st kaj hocche jei branch e merge korbo sei branch e checkout kora.`

# Dart Topic

_List- is a ordered collection of object._
**List method**
1. removeWhere(): Remove all elements that satisfy a condition
   Example: fruits.removeWhere(fruits)=>fruits.startsWith('b');
2. For in loop
   Example: for(String fruit in fruits){print(fruit);}
3. forEach loop
   Example: fruits.forEach((fruit)=>print(fruit));
4. Where()-> filters elements based on condition.
   Example: List<String> longWords= fruits.where((fruit)=>fruit.length>5).toList();

# final vs const

## Final

ডার্টে final কীওয়ার্ড একটি ভেরিয়েবল ঘোষণা করতে ব্যবহৃত হয় যা শুধুমাত্র একবার মান সেট করা যাবে। একবার মান নির্ধারণ করা হলে, এটি পরিবর্তন করা যাবে না। 
তবে, এটি মনে রাখতে হবে যে একটি final ভেরিয়েবলকে ব্যবহার করার আগে অবশ্যই ইনিশিয়ালাইজ করতে হবে, এবং একবার মান নির্ধারণ করা হলে আর পরিবর্তন করা যাবে না।

### `final` এর মূল বৈশিষ্ট্য:
1. **একটি মান একবার সেট করা যাবে**: `final` ভেরিয়েবলকে একবার মান দেওয়া হলে, তা আর পরিবর্তন করা যাবে না।
2. **পরবর্তীতে মান সেট করা**: `final` ভেরিয়েবলকে প্রথমে মান নির্ধারণ না করলে, আপনি `late` কীওয়ার্ড ব্যবহার করতে পারেন, তবে একবার সেট করা হলে এটি পরিবর্তন করা যাবে না।
##    Late ইনিশিয়ালাইজেশন
 ```dart
  late final String greeting;
   greeting = "Hello, Dart!";  // একবার সেট করা
   print(greeting);
```
3. **রানটাইম মান**: `final` ভেরিয়েবলগুলির মান রানটাইমে নির্ধারিত হতে পারে, কিন্তু একবার সেট করা হলে তা অপরিবর্তনীয়।

## const

ডার্টে const কীওয়ার্ড ব্যবহার করা হয় এমন ভেরিয়েবল বা অবজেক্ট তৈরি করতে যেগুলি কম্পাইল টাইমে (compile-time) নির্ধারিত হয় এবং যেগুলি একবার সেট হওয়ার পর পরিবর্তন করা যায় না। 
const একটি কম্পাইল টাইম কনস্ট্যান্ট তৈরি করতে ব্যবহৃত হয়, অর্থাৎ এটি এমন মান বা অবজেক্ট যা প্রোগ্রাম চলাকালীন সময়ে নয়, বরং প্রোগ্রাম কম্পাইল হওয়ার সময় নির্ধারিত হয়।
### `const` এর মূল বৈশিষ্ট্য:
1. **কম্পাইল টাইম কনস্ট্যান্ট**: `const` ভেরিয়েবল বা অবজেক্টের মান কম্পাইল সময়ে নির্ধারিত হতে হবে। এই মানটি রানটাইমে পরিবর্তিত হতে পারে না।
2. **অপরিবর্তনীয়**: একবার `const` মান সেট হলে, তা আর পরিবর্তন করা যায় না। এটি এমন একটি ফিক্সড মান তৈরি করে যা সব সময় একই থাকে।
3. **অবজেক্ট কনস্ট্রাকশন**: আপনি `const` ব্যবহার করে অবজেক্টও তৈরি করতে পারেন, এবং এই অবজেক্টগুলি কম্পাইল টাইমে তৈরি হয় এবং অপরিবর্তনীয় থাকে।
4. **`const` কন্সট্রাক্টর**: যখন কোনো ক্লাসের কন্সট্রাক্টর `const` দিয়ে চিহ্নিত করা হয়, তখন ওই ক্লাসের ইনস্ট্যান্সগুলি **কম্পাইল টাইম কনস্ট্যান্ট** হবে।

### `final` এবং `const` এর মধ্যে পার্থক্য:
- `final`: এই মানটি রানটাইমে নির্ধারিত হয় এবং একবার সেট হলে আর পরিবর্তন করা যায় না।
- `const`: এই মানটি কম্পাইল টাইমে নির্ধারিত হয় এবং কম্পাইল টাইমেই এর মান নির্ধারণ করা হয়।
```dart
final int runtimeValue = DateTime.now().year;  // রানটাইম মান
const int compileTimeValue = 42;  // কম্পাইল টাইম মান
```
| Aspect      | Compile Time             | Run Time                      |
| ----------- | ------------------------ | ----------------------------- |
| When?       | Before the app runs      | While the app is running      |
| Errors type | Syntax, type errors      | Logic, runtime crashes        |
| Fixed by    | Developer before running | Often needs try-catch, checks |
| Example     | Missing semicolon        | Dividing by zero              |

# Mutable and Immutable

1. Mutable- Data can change
2. Immutable- Data can't change

# Arrow function

void printName()=>print('hello');// when there is a single task to perform

# Infinite loop

for(int i=1; i>0; i++){print('hello: $i');}

# Line break after each row

stdout.writeln();// For this import ('dart:io')

# Run App, Material app, Scaffold, Text & image

1. runApp(): the entry point that tells Flutter what to display on the screen. main() is the starting point of a Dart program. runApp(MyApp()) tells Flutter: “Start the app and use MyApp as the first widget.”
2. Material app: **a pre-built widget** in Flutter that sets up your app with Material Design — Google’s design language for mobile and web apps. **MaterialApp is like the main frame of your app** — it handles things like: Theme, routes, Home, title, Debug banner.
3. Scaffold: **a layout structure widget** in Flutter that provides the basic **visual structure** of a Material Design app — **like the skeleton of your app's screen**. Think of Scaffold as a template for a typical app screen — it gives you areas to easily add: AppBar, body, floatingActionButton, drawer, bottomNavigationBar, backgroundColor.
4. Common Properties of Text Widget:
   | Property         | Description                            | Example                     |
   | ---------------- | -------------------------------------- | --------------------------- |
   | `style`          | Text style (color, size, font, etc.)   | `TextStyle(fontSize: 20)`   |
   | `textAlign`      | Align text (left, center, right, etc.) | `TextAlign.center`          |
   | `maxLines`       | Max number of lines                    | `maxLines: 2`               |
   | `overflow`       | Handle overflow (e.g. `...`)           | `TextOverflow.ellipsis`     |
   | `softWrap`       | Wrap text to next line                 | `softWrap: true`            |
   | `textDirection`  | Text direction (LTR, RTL)              | `TextDirection.ltr`         |
   | `semanticsLabel` | For screen readers (accessibility)     | `"Label for screen reader"` |
5. Common Ways to Use Image:
   Image.asset('assets/image.png')       // From local assets.
   Image.network('https://...')          // From the internet.
   Image.file(File('path'))              // From device file.
   Image.memory(bytes)                   // From raw memory.

   Common Properties of Image:
   | Property         | Description                            | Example                         |
   | ---------------- | -------------------------------------- | ------------------------------- |
   | `width`          | Width of the image                     | `width: 100`                    |
   | `height`         | Height of the image                    | `height: 100`                   |
   | `fit`            | How the image should fit its container | `BoxFit.cover`, `contain`, etc. |
   | `color`          | Apply color filter                     | `color: Colors.grey`            |
   | `alignment`      | Align image inside its box             | `Alignment.center`              |
   | `repeat`         | Repeat image                           | `ImageRepeat.repeatX`           |
   | `loadingBuilder` | Custom loading widget while loading    | Show progress indicator         |
   | `errorBuilder`   | Handle image load errors               | Show fallback UI                |

## Why use MaterialApp?
1. Gives access to **Material widgets like Scaffold, AppBar, FloatingActionButton**, etc.
2. Makes your app look and feel like a real Android app.

## Why use Scaffold?
Because **it gives you a standard structure** and lets you build apps that follow Material Design without doing everything manually.

### Quick Note:
You must use Scaffold inside a MaterialApp to get full Material functionality.

# Null safety and null variable

নাল সেফটি এর মাধ্যমে, আপনি নিশ্চিত করতে পারেন যে আপনার কোডে কখনও নাল মান (null value) প্রবেশ করবে না, যা অনেক সাধারণ বাগের কারণ হতে পারে।






