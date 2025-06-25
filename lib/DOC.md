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

নাল সেফটি এর মাধ্যমে, আপনি নিশ্চিত করতে পারেন যে আপনার কোডে কখনও নাল মান (null value) প্রবেশ করবে না, যা বাগের কারণ হতে পারে।
### **What is Null Safety?**
- **Null safety** is a feature introduced in Dart 2.12 that helps developers **avoid null pointer exceptions** by ensuring variables can't have `null` values.
- With **null safety**, the Dart compiler can track which variables can or cannot be `null`, preventing runtime errors related to `null` values.
- Null safety means protecting your app from crashes caused by null values.

### Nullable Types
1. In Dart, every single variable is non-nullable by default.
2. If you want a variable to be able to hold a null value, 
you need to explicitly mark the type as nullable by adding a (?) after the type.
```dart
String? name = null;  // Nullable String
```
```dart
void main() {
  String? name = "Bob";  // Nullable String
  name = null;  // This is valid because name is nullable
}
```
### Non-Nullable Types
1. In Dart, every single variable is non-nullable by default.
2. A variable of a non-nullable type cannot hold a null value.
```dart
String name = "John";  // Non-nullable String
```
### Late Variables
1. Dart allows the use of the `late` keyword to **delay the initialization of a variable**. 
This is useful when you want to ensure a non-nullable variable is assigned later, but before it is accessed.
```dart
late String name;
void setName() {
  name = "Alice";
}
```
### Null Assertion Operator (!)
1. If a variable is nullable, but you're sure it’s not null at that moment, you can use ! to convert it into a non-nullable type.
```dart
String? name = 'Flutter';
print(name!.length); // Works fine because name is not null
```
### But if the value is null, it will crash:
```dart
String? name = null;
print(name!.length); // CRASHES: Null check operator used on a null value
```
## **Migrating to Null Safety**
- **Why Migrate?**
   - Migrating to null safety helps you catch errors earlier in the development cycle, thus improving your code quality and reliability.
- **How to Migrate:**
   1. **Update your Dart SDK** to a version that supports null safety (Dart 2.12 or higher).
   2. **Update dependencies**: Ensure that all your dependencies support null safety. Use `pub outdated --mode=null-safety` to check.
   3. **Migrate your code**: Dart provides a migration tool (`dart migrate`) that helps you update your code to null safety.
- **Using `dart migrate` tool:**
   1. Run `dart migrate` from your project directory to start the migration process.
   2. The tool will guide you through updating your project to null safety.

## **Best Practices for Null Safety:**
- **Prefer non-nullable types**: Use non-nullable types as much as possible to avoid unexpected null-related errors.
- **Use `late` only when necessary**: `late` should be used carefully, especially in large codebases where it can lead to potential null dereference errors.
- **Use `?` for optional values**: If a variable can be null, mark it explicitly as nullable using `?`.
- **Use null-aware operators**: Dart provides several null-aware operators to help you deal with nullable types safely, such as `??`, `?.`, and `??=`.
```dart
String? name;
print(name ?? "Default Name");  // Prints "Default Name" if name is null, Can perform another thing when null

// Null-aware access operator
name?.length;  // Safely calls length only if name is not null, value jokhon non-nullable hobe tokhon kaj korbe

// Null-aware assignment
name ??= "Fallback Name";  // Assigns "Fallback Name" if name is null, can assign value when null
```
## Conclusion
- Null safety is an important feature in Dart that helps eliminate null pointer exceptions and makes your code more robust.
- By default, Dart variables are non-nullable. To allow null values, you must explicitly mark types as nullable.
- Tools like the `late` keyword, null assertion operator (`!`), and null-aware operators help manage nullable types efficiently.
- Migrating to null safety involves updating the Dart SDK, dependencies, and your code, and Dart provides tools to assist with the migration process.
- Run time error theke bachay compile time error dey
- Nullable(Null o assign hobe, value o assign hobe), late(porobortite hobe assign)

# Layout widget and placements
Layout widgets are like containers or organizers that decide where and how your UI elements (Text, Image, Button, etc.) appear on the screen.
### Common Layout Widgets and Their Placements
| Widget      | Placement Behavior                         | Example Usage                      |
|-------------|--------------------------------------------|------------------------------------|
| `Row`       | Places widgets **horizontally**            | Buttons side-by-side               |
| `Column`    | Places widgets **vertically**              | Texts stacked one below another    |
| `Stack`     | Places widgets **on top of each other**    | Overlay text on image              |
| `Container` | Holds one child with **custom size/space** | Add padding, margin, color, etc.   |
| `Center`    | Places child in the **center**             | Center text or image               |
| `Padding`   | Adds space **inside** around a widget      | Keep distance inside button        |
| `SizedBox`  | Gives **fixed width/height**               | Add spacing between widgets        |
| `Expanded`  | Fills available space inside Row/Column    | Make widget stretch                |
| `Wrap`      | Wraps items **to next line** if needed     | Chips or buttons in multi-line row |
| `Align`     | Aligns child to a **specific corner/side** | Bottom right, center left, etc.    |

### Note
1. Row-> x-> main axis, y-> cross axis.
2. Col->y -> main axis, x-> cross axis.
3. Col er khetre main axis hoy upor theke niche, r cross axis horizontally.
4. Row er khetre main axis hoy horizontally, r cross axis vertically.0
### Spacing er jonno
mainAxisAlignment: 
1. spaceBetween-> Nijeder modde space e equal gap rakhbe
2. spaceEvenly-> Left+Right equal distance rakhbe
3. spaceAround-> Left e jototuku space nibe Right eo same space nibe
4. So mainAxisAlignment:
- In a Row → controls horizontal alignment
- In a Column → controls vertical alignment
   | Value                            | Meaning                                       |
   | -------------------------------- | --------------------------------------------- |
   | `MainAxisAlignment.start`        | Align children at the **start** of main axis  |
   | `MainAxisAlignment.end`          | Align children at the **end** of main axis    |
   | `MainAxisAlignment.center`       | Align children at the **center**              |
   | `MainAxisAlignment.spaceBetween` | Space between items, no space at ends         |
   | `MainAxisAlignment.spaceAround`  | Even space around all items                   |
   | `MainAxisAlignment.spaceEvenly`  | Equal space between all items including edges |
### Note
1. MainAxisSize.min/max-> min dile jotogula element ache tototuku jayga nibe. Purata nibe na. By default max thake.

# Function in Flutter

- A function in Flutter (Dart) is a block of reusable code that performs a specific task.

### Basic Syntax
```dart
void myFunction() {
  print('Hello from function!');
}
```
### To call it
```dart
myFunction(); // Output: Hello from function!
```
## Function Types
- Void Function (No return value)
```dart
void greetUser() {
  print("Welcome!");
}
```
- Function with Parameters
```dart
void greet(String name) {
  print("Hello, $name!");
}
```
### Call it like
```dart
greet("Moshiur"); // Hello, Moshiur!
```
- Function with Return Value
```dart
int add(int a, int b) {
  return a + b;
}
```
### Call it
```dart
int result = add(3, 4);  // result = 7
```
- Arrow Function (Short form)
```dart
int square(int x) => x * x;
```
- Anonymous function
- Higher order function
- Call back function
## Function with Parameters
- Positional Parameters (Required)(You must pass the argument in the correct order.)
```dart
void greet(String name) {
  print("Hello, $name!");
}
greet("Moshiur"); // Output: Hello, Moshiur!
```
- Optional Positional Parameters(Use square brackets [] for optional parameters)
```dart
void greet(String name, [String? title]) {
  if (title != null) {
    print("Hello, $title $name!");
  } else {
    print("Hello, $name!");
  }
}
greet("Moshiur");               // Hello, Moshiur!
greet("Moshiur", "Mr.");        // Hello, Mr. Moshiur!
```
- Named Parameters(Use curly braces {} for named parameters. Call them by name for clarity)
```dart
void greet({required String name, String title = "Mr."}) {
  print("Hello, $title $name!");
}
greet(name: "Moshiur");              // Hello, Mr. Moshiur!
greet(name: "Moshiur", title: "Dr."); // Hello, Dr. Moshiur!
```
- Mixed Parameters (Positional + Named)
```dart
void greet(String timeOfDay, {required String name}) {
  print("Good $timeOfDay, $name!");
}
greet("Morning", name: "Moshiur"); // Good Morning, Moshiur!
```







