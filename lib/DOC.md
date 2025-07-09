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
|-------------|--------------------------|-------------------------------|
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

- A function in Flutter (Dart) is a **block of reusable code** that performs a **specific task**.

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
- Anonymous function & lambdas function
1. A function without a name.
2. It’s used once or inline, often as an argument to another function like a button or loop.
### Example in Flutter (Button):
```dart
ElevatedButton(
  onPressed: () {
    print("Button clicked!");
  },
  child: Text('Click Me'),
);
```
- () { print("..."); } is an anonymous function passed to onPressed.
### Compare with Named Function
```dart
void sayHello() {
  print("Hi!");
}
sayHello();
```
### Anonymous
```dart
() {
  print("Hi!");
}(); // Called immediately
```
### lambda function
```dart
ElevatedButton(
onPressed: () => print("Clicked!"),
child: Text('Click Me'),
);
```
- Higher order function
1. A higher-order function is a function that does one or both of the following:Takes another function as a parameter, Returns a function.
### Takes a Function as a Parameter
```dart
void greet(String name, Function callback) {
  print("Hello, $name!");
  callback(); // calling the function passed in
}
void sayThanks() {
  print("Thanks for visiting!");
}
greet("Moshiur", sayThanks);
```
### Output
Hello, Moshiur!
Thanks for visiting!
### Returns a Function
```dart
Function multiplyBy(int n) {
  return (int x) => x * n;  // returns a function!
}
var doubleIt = multiplyBy(2);
print(doubleIt(5)); // Output: 10
```
- Call back function
1. Tell me what to do after this is done.(A callback function is a function that you pass as an argument to another function, and it is called later, usually after something happens (like a button tap or API response).)
### Flutter Button Example
```dart
ElevatedButton(
  onPressed: () {
    handleClick(); // this is a callback
  },
  child: Text('Click Me'),
);
void handleClick() {
  print("Button clicked!");
}
```
### Why Use Callback Functions?
| 🔸 Use Case           | 🔹 Purpose                         |
|-----------------------|------------------------------------|
| Buttons (`onPressed`) | Respond to user interaction        |
| APIs / Delays         | Run logic after data loads         |
| Custom Widgets        | Let child talk to parent           |
| Animations            | Run code after animation completes |

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

# Container
## Common Properties
| Property                | What it Does                                |
|:------------------------|:--------------------------------------------|
| `width`, `height`       | Size of the container                       |
| `color`                 | Background color                            |
| `padding`               | Space **inside** the container              |
| `margin`                | Space **outside** the container             |
| `alignment`             | Aligns the child widget(Container Child)    |
| `decoration`            | Add borders, gradients, rounded corners     |
| `child`                 | Widget placed inside the container          |
| `foregroundDecoration`  | Decoration that appears on top of the child |
| `constraints`           | Set min/max width and height                |

```dart
Container(
  width: 200,
  height: 100,
  padding: EdgeInsets.all(16),
  margin: EdgeInsets.only(top: 20),
  alignment: Alignment.center,
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(12),
    border: Border.all(color: Colors.black, width: 2),
  ),
  child: Text(
    'Hello Container!',
    style: TextStyle(color: Colors.white),
  ),
)
```
```dart
decoration: BoxDecoration(
  color: Colors.orange,
  gradient: LinearGradient(colors: [Colors.orange, Colors.red]),
  boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)],
  borderRadius: BorderRadius.circular(10),
),
```
### What is constraints in a Flutter Container?
- constraints lets you tell the Container: “You can’t be smaller or bigger than this size.”
```dart
Container(
  constraints: BoxConstraints(
    minWidth: 100,
    maxWidth: 200,
    minHeight: 50,
    maxHeight: 100,
  ),
  color: Colors.green,
  child: Text("I’m constrained"),
)
```
### Quick Note
- Kono container a child na thakle sheta pura screen jayga nibe. but child just child er jayga tuku nibe.
- Container er modde decoration use korle container er color ta decoration er under e jabe .

# Class 
- void main(){int age=15;}-> directly assign value etake bole preemptive(int, double, float)/primary type. Same kajta class e o hoy. Class obj. creation er maddome data store kore
- A class is like a blueprint for creating objects.
- It defines what an object is (its properties) and what it can do (its methods).

### Example
```dart
class Person {
  String name = '';
  int age = 0;
  void sayHello() {
    print("Hi, I'm $name and I'm $age years old.");
  }
}
```
### This class says:
- Every Person has a name and age.
- And they can sayHello()
### Creating and Using an Object
```dart
void main() {
  Person p = Person();   // Create object
  p.name = "Moshiur";
  p.age = 25;
  p.sayHello();          // Output: Hi, I'm Moshiur and I'm 25 years old.
}
```
### Class Structure
```dart
class ClassName {
  // Properties (variables)name, age
  // Constructor (optional)
  // Methods (functions)
}
```
### Why Use Classes in Flutter?
| Use Case           | Benefit                           |
|--------------------|-----------------------------------|
| Model data         | Represent users, products, etc.   |
| Reusable logic     | Define once, use many times       |
| Organize your code | Keep UI, data, and logic separate |

- Blue print(class), Civil engineer(Constructor)
- jokhon method class er outside likha hobe tokhon sheta function, jetar shathe class er kono relation nai.

# Constructor

- A constructor is a special method in a class that runs automatically when you create an object. 
- It’s used to initialize (set up) the values of the class.

### Basic Example
```dart
class Person {
  String name;
  int age;
  // Constructor
  Person(String n, int a) {
    name = n;
    age = a;
  }
  void showInfo() {
    print("Name: $name, Age: $age");
  }
}
void main() {
  Person p = Person("Moshiur", 22); // 👈 Constructor runs here
  p.showInfo(); // Output: Name: Moshiur, Age: 22
}
```
### Shorter Way (Using this)
```dart
class Person {
  String name;
  int age;
  // Short constructor
  Person(this.name, this.age);
}
```
- this.name means: assign the constructor value to the class variable.
### Named Constructor Example
```dart
class Person {
  String name;
  int age;
  Person(this.name, this.age);
  // Named constructor
  Person.young(String name) {
    this.name = name;
    this.age = 10;
  }
}
void main() {
  var child = Person.young("Ali");
  print("${child.name}, ${child.age}"); // Ali, 10
}
```
### Why Use Constructors?
| Use Case             | Benefit                  |
|----------------------|--------------------------|
| Create class objects | Set initial values       |
| Reduce repetition    | Easy and clean syntax    |
| Named constructors   | Create variations easily |

### Summary
- A constructor runs automatically when an object is created from a class. It helps set up the initial values of your object.
### Real-Life Story: Constructor at a Hotel
You go to a hotel to check in. When you reach the front desk, the receptionist asks:
- “What’s your name, age, and 
- how many nights will you stay?”
You give your details:
- Name: Moshiur 
- Age: 22 
- Nights: 3
The receptionist fills out a form (object) using a template (class) and your info (parameters).
That form is now your booking record!
### Dart Code Version of the Story
```dart
class HotelGuest {
  String name;
  int age;
  int nights;
  // 👇 Constructor sets up the guest’s info
  HotelGuest(this.name, this.age, this.nights);
  void welcomeMessage() {
    print("Welcome $name! You are $age years old and staying for $nights nights.");
  }
}
void main() {
  // 🎟️ Check-in: Create a guest object using the constructor
  HotelGuest guest1 = HotelGuest("Moshiur", 22, 3);
  guest1.welcomeMessage();//Welcome Moshiur! You are 22 years old and staying for 3 nights.
}
```
### Moral of the Story
- The constructor is like the hotel receptionist — it helps you create a complete guest object by asking for the needed information up front.
### Note
- this.name(current je obj create hocche shetar je property ache name er modde value set hobe parameter theke je value asbe)
- constructor use kortesi barbar object creation er jamela theke muktir jonno. constructor class theke info niye memory te ekta physical object create kore dey 

# Ternary Operator
```dart
print(a>b?"a is greater":"b is greater")
```
# Exception & Exception Handling
- An exception is an error that happens while the program is running (runtime).
- For example: dividing by zero, accessing a file that doesn't exist, or calling a method on null.
- “Something went wrong — but the app shouldn’t crash!”(Exception Handling)
### Example of an Exception
```dart
void main() {
  int x = 10;
  int y = 0;
  print(x ~/ y); // ❗ This will throw an exception: IntegerDivisionByZeroException
}
```
### How to Handle Exceptions: try - catch
```dart
void main() {
  try {
    int result = 10 ~/ 0;
    print("Result: $result");
  } catch (e) {
    print("An error occurred: $e");
  }
}
```
### try - catch - finally (optional cleanup)
```dart
void main() {
  try {
    int result = 10 ~/ 0;
    print("Result: $result");
  } catch (e) {
    print("Error: $e");
  } finally {
    print("This always runs.");
  }
}
```
### Catching Specific Exception
```dart
void main() {
  try {
    int result = int.parse("abc"); // FormatException
    print("Result: $result");
  } on FormatException catch (e) {
    print("Invalid number format: $e");
  }
}
```
### Summary
| Keyword    | Use                                           |
|------------|-----------------------------------------------|
| `try`      | Block of code that may throw an exception     |
| `catch(e)` | Handles the exception if one occurs           |
| `on`       | Handles a **specific** type of exception      |
| `finally`  | Always runs, even if there is an error or not |

### What is a Custom Exception in Dart?
- It's like saying: “When this very specific thing goes wrong, I want to throw my own message, not just a generic error.” 

### Step 1: Create a Custom Exception Class
```dart
class InvalidAgeException implements Exception {
  String errorMessage() {
    return "Age must be greater than 0!";
  }
}
```
### Step 2: Use throw to Raise It
```dart
void checkAge(int age) {
  if (age <= 0) {
    throw InvalidAgeException();
  } else {
    print("Age is valid: $age");
  }
}
```
### Step 3: Catch It
```dart
void main() {
  try {
    checkAge(0); // ❗ Invalid input
  } catch (e) {
    print("Caught an exception: ${e is InvalidAgeException ? e.errorMessage() : e}");//Caught an exception: Age must be greater than 0!
  }
}
```
### Why Use Custom Exceptions?
| Reason                           | Example                                   |
|----------------------------------|-------------------------------------------|
| Show clearer error messages      | "User not found" instead of generic crash |
| Handle domain-specific errors    | Like banking errors, invalid email, etc.  |
| Keep your code clean & organized | Separate error logic for different cases  |
### What is a Stack Trace in Dart (Flutter)?
- Imagine your program is walking through a set of stairs (functions). 
- If it falls, the stack trace shows which steps (functions) it took before falling.
```dart
void levelOne() {
  levelTwo();
}
void levelTwo() {
  throw Exception("Something went wrong!");
}
void main() {
  try {
    levelOne();
  } catch (e, stackTrace) {
    print("Error: $e");
    print("Stack Trace: $stackTrace");
  }
}
```
### Output
```dart
Error: Exception: Something went wrong!
Stack Trace: 
#0      levelTwo (main.dart:6:7)
#1      levelOne (main.dart:2:3)
#2      main (main.dart:10:5)
```
### Propagation of Exception
- Suppose method 1 e kaj kore se method 2 call kore and method 2 method 3 ke call kore. 
- And 2,3 method e Exception handling kora nai. Program ki crash korbe?
- It doesn't matter tmi 2/3 method handle koro nai. But jekhan theke initially call korso shekhane jodi handle kora thake taholei cholbe.
- Method 3 e Exception paise  se method 2 e propagate korbe. 2 te Exception paise 1 e propagate korbe then catch block e pathay dibe.

# Dart OOP
## Encapsulation
- ডার্টে এনক্যাপসুলেশন (Encapsulation) হল একটি অবজেক্ট অরিয়েন্টেড প্রোগ্রামিং (OOP) কনসেপ্ট, যার মাধ্যমে ক্লাসের ভিতরের ডেটা এবং ফাংশনগুলিকে একটি ইউনিটে আবদ্ধ করা হয় এবং বাইরের কোড থেকে তাদের অ্যাক্সেস সীমাবদ্ধ করা হয়। এর মাধ্যমে আপনি ডেটা সুরক্ষা (data security) এবং কোডের মডুলারিটি (modularity) বজায় রাখতে পারেন।

### ডার্টে এনক্যাপসুলেশন কিভাবে কাজ করে?
1. **প্রাইভেট (Private) এবং পাবলিক (Public) অ্যাট্রিবিউটস**:
   - **পাবলিক অ্যাট্রিবিউটস**: যেগুলি বাইরের কোড থেকে সরাসরি অ্যাক্সেস করা যায়।
   - **প্রাইভেট অ্যাট্রিবিউটস**: যেগুলি ক্লাসের বাইরে অ্যাক্সেস করা যায় না। ডার্টে, একটি প্রাইভেট ফিল্ড বা মেথড নামের শুরুতে `_` (আন্ডারস্কোর) চিহ্ন ব্যবহার করে চিহ্নিত করা হয়।
2. **গেটার (Getter) এবং সেটার (Setter)**:
   গেটার এবং সেটার ফাংশন ব্যবহার করে আপনি প্রাইভেট ডেটা অ্যাক্সেস করতে পারেন। গেটার দ্বারা আপনি ডেটার মান পেতে পারেন, এবং সেটার দ্বারা আপনি ডেটার মান পরিবর্তন করতে পারেন।
```dart
class Person {
  // প্রাইভেট ভ্যারিয়েবল
  String _name;
  int _age;
  // কনস্ট্রাক্টর
  Person(this._name, this._age);
  // গেটার ফাংশন
  String get name => _name;
  int get age => _age;
  // সেটার ফাংশন
  set name(String name) {
    if (name.isNotEmpty) {
      _name = name;
    }
  }
  set age(int age) {
    if (age > 0) {
      _age = age;
    }
  }
}
void main() {
  var person = Person('Alice', 25);
  // গেটার ব্যবহার করে ডেটা অ্যাক্সেস
  print(person.name);  // Output: Alice
  print(person.age);   // Output: 25

  // সেটার ব্যবহার করে ডেটা পরিবর্তন
  person.name = 'Bob';
  person.age = 30;

  print(person.name);  // Output: Bob
  print(person.age);   // Output: 30
}
```
### ব্যাখ্যা
- `_name` এবং `_age` প্রাইভেট ভ্যারিয়েবল হিসেবে ডিফাইন করা হয়েছে, যাতে বাইরের কোড সরাসরি এগুলির মান পরিবর্তন বা অ্যাক্সেস না করতে পারে।
- `name` এবং `age` গেটার এবং সেটার ফাংশন দ্বারা এই প্রাইভেট ভ্যারিয়েবলগুলির মান অ্যাক্সেস এবং পরিবর্তন করা যায়।
### উপকারিতা
1. **ডেটা সুরক্ষা**: প্রাইভেট ফিল্ডগুলো বাইরের কোড থেকে অ্যাক্সেস করা যায় না, ফলে ডেটা সুরক্ষিত থাকে।
2. **কোডের মডুলারিটি**: একাধিক অংশের মধ্যে কোডের পুনঃব্যবহারযোগ্যতা বাড়ে এবং মেইনটেন্যান্স সহজ হয়।
3. **কন্ট্রোল**: আপনি ডেটার পরিবর্তন বা অ্যাক্সেসের ওপর কন্ট্রোল রাখতে পারেন, যেমন সেটার ফাংশনে ডেটার বৈধতা পরীক্ষা করা।
### Why Do We Use the static Keyword in Dart (Flutter)?
- Normally, you must create an object to use class properties/methods. 
- But when something is static, you can use it directly from the class.
- Example Without static:
```dart
class MyClass {
  String message = "Hello";
}
void main() {
  var obj = MyClass();      // 👈 create object
  print(obj.message);       // ✅ works
}
```
- Example Using static:
```dart
class MyClass {
  static String message = "Hello";
}
void main() {
  print(MyClass.message);   // 👈 no object needed
}
```

## Inheritance
- ডার্টে ইনহেরিটেন্স (Inheritance) হল একটি কনসেপ্ট যেখানে একটি ক্লাস (Subclass) অন্য একটি ক্লাস (Superclass) থেকে বৈশিষ্ট্য (properties) এবং পদ্ধতি (methods) গ্রহণ করে। এটি কোডের পুনঃব্যবহারযোগ্যতা (reusability) এবং সহজ maintenance নিশ্চিত করে। ডার্টে ইনহেরিটেন্সের মূল উদ্দেশ্য হল একটি নতুন ক্লাস তৈরি করা যা পূর্ববর্তী ক্লাসের সব বৈশিষ্ট্য ও আচরণ (behavior) নিতে পারে, তবে তার সঙ্গে নতুন বৈশিষ্ট্য বা আচরণ যোগ করতে পারে। এটি একটি ক্লাসের মাধ্যমে আরেকটি ক্লাসের functionality ব্যবহার করার একটি উপায়।
```dart
// Superclass (বেস ক্লাস)
class Animal {
  void eat() {
    print("Animal is eating");
  }
  void sleep() {
    print("Animal is sleeping");
  }
}
// Subclass (সাবক্লাস)
class Dog extends Animal {
  // নতুন বৈশিষ্ট্য বা পদ্ধতি যোগ করা যেতে পারে
  void bark() {
    print("Dog is barking");
  }
}
void main() {
  var dog = Dog();
  dog.eat();  // Animal ক্লাস থেকে inherit করা হয়েছে
  dog.sleep(); // Animal ক্লাস থেকে inherit করা হয়েছে
  dog.bark();  // Dog ক্লাসের নতুন পদ্ধতি
}
```
### ব্যাখ্যা:

1. **Superclass (বেস ক্লাস)**: এখানে `Animal` ক্লাসটি বেস ক্লাস, যার মধ্যে `eat()` এবং `sleep()` নামক পদ্ধতিগুলি আছে।
2. **Subclass (সাবক্লাস)**: `Dog` ক্লাসটি `Animal` ক্লাস থেকে ইনহেরিট করেছে (এটি `extends Animal` দিয়ে করা হয়েছে)। এর ফলে `Dog` ক্লাসে `Animal` ক্লাসের `eat()` এবং `sleep()` পদ্ধতিগুলি পাওয়া যাবে, পাশাপাশি `bark()` নামক নতুন পদ্ধতি যোগ করা হয়েছে।
3. **মেইন ফাংশন**: এখানে `dog` নামক একটি `Dog` অবজেক্ট তৈরি করা হয়েছে, যা `Animal` এবং `Dog` দুটো ক্লাসের বৈশিষ্ট্য ব্যবহার করতে পারে।

### ইনহেরিটেন্সের সুবিধা:

1. **কোড পুনঃব্যবহার**: একাধিক ক্লাসের মধ্যে কোড পুনরায় ব্যবহার করতে পারে, ফলে কোডের পরিমাণ কমানো যায়।
2. **সহজ পরিবর্তন**: বেস ক্লাসে কোনো পরিবর্তন করলে তা সাবক্লাসে প্রভাব ফেলবে, ফলে সামগ্রিক কোড পরিবর্তন সহজ হয়।
3. **স্পেশালাইজেশন**: আপনি বেস ক্লাস থেকে নতুন ক্লাস তৈরি করতে পারেন যা আরও স্পেসিফিক বৈশিষ্ট্য বা আচরণ যুক্ত করে।

### এক্সটেনশন (Method Overriding)

ডার্টে ইনহেরিটেন্সের মাধ্যমে আপনি বেস ক্লাসের মেথডও ওভাররাইড (override) করতে পারেন, যার মাধ্যমে সাবক্লাসে একই নামের পদ্ধতি আবার সংজ্ঞায়িত করা যায়।
```dart
class Animal {
  void sound() {
    print("Animal makes a sound");
  }
}
class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks");
  }
}
void main() {
  var dog = Dog();
  dog.sound();  // "Dog barks" print হবে
}
```
- এখানে `Dog` ক্লাসে `sound()` মেথডটি `@override` অ্যানোটেশন ব্যবহার করে `Animal` ক্লাসের `sound()` মেথডকে ওভাররাইড করা হয়েছে।  এভাবে ইনহেরিটেন্সের মাধ্যমে আপনি ডার্টে ক্লাসের বৈশিষ্ট্য ও আচরণ পুনরায় ব্যবহার এবং পরিবর্তন করতে পারেন।

## Polymorphism
### ডার্টে পলিমরফিজম (Polymorphism)
- পলিমরফিজম হলো একটি গুরুত্বপূর্ণ বৈশিষ্ট্য, যা অবজেক্ট-ওরিয়েন্টেড প্রোগ্রামিং (OOP) এর একটি মূল ধারণা। পলিমরফিজমের মাধ্যমে একটি উপযুক্ত নাম বা ফাংশন বিভিন্ন ধরনের অবজেক্টের উপর কাজ করতে পারে, যার ফলে কোডের পুনঃব্যবহারযোগ্যতা ও প্রোগ্রামের নমনীয়তা বাড়ে। ডার্টে পলিমরফিজমকে সাধারনত দুইভাবে বুঝানো হয়:
1. **মেথড ওভাররাইডিং (Method Overriding)**
2. **মেথড ওভারলোডিং (Method Overloading)**
- ডার্টে মেথড ওভারলোডিং সরাসরি সমর্থিত নয়, তবে আপনি মেথড ওভাররাইডিংয়ের মাধ্যমে পলিমরফিজম বাস্তবায়ন করতে পারেন।

### ১. মেথড ওভাররাইডিং (Method Overriding)
- মেথড ওভাররাইডিং-এর মাধ্যমে একটি বেস ক্লাসে নির্ধারিত ফাংশন বা মেথডকে সাবক্লাসে নতুনভাবে নির্ধারণ করা হয়। এতে মূল ক্লাসের মেথড এবং সাবক্লাসের মেথড একই নামে থাকতে পারে, কিন্তু তাদের কার্যকলাপ আলাদা হয়।
- উদাহরণস্বরূপ:
```dart
// বেস ক্লাস
class Animal {
  void speak() {
    print("Animal makes a sound");
  }
}
// সাবক্লাস
class Dog extends Animal {
  @override
  void speak() {
    print("Dog barks");
  }
}
class Cat extends Animal {
  @override
  void speak() {
    print("Cat meows");
  }
}
void main() {
  // পলিমরফিজম উদাহরণ
  Animal myAnimal = Animal();
  myAnimal.speak();  // "Animal makes a sound"

  myAnimal = Dog();
  myAnimal.speak();  // "Dog barks"

  myAnimal = Cat();
  myAnimal.speak();  // "Cat meows"
}
```
- এখানে speak() মেথডটি Animal ক্লাসে ডিফাইন করা হয়েছে এবং Dog ও Cat সাবক্লাসে তা ওভাররাইড করা হয়েছে। বিভিন্ন টাইপের অবজেক্টকে একই ভেরিয়েবল ব্যবহার করে বিভিন্নভাবে কল করা যেতে পারে, যা পলিমরফিজমের একটি প্রধান বৈশিষ্ট্য।
### মেথড ওভারলোডিং (Method Overloading)
- ডার্টে মেথড ওভারলোডিং সরাসরি সমর্থিত নয়, কিন্তু আপনি একাধিক মেথড নামের মাধ্যমে বিভিন্ন আর্গুমেন্ট সহ মেথড বানিয়ে তা কার্যকর করতে পারেন। উদাহরণস্বরূপ:
```dart
class Calculator {
  // এক আর্গুমেন্টের জন্য মেথড
  int add(int a) {
    return a + 10;
  }
  // দুই আর্গুমেন্টের জন্য মেথড
  int add(int a, int b) {
    return a + b;
  }
}
void main() {
  Calculator calc = Calculator();
  print(calc.add(5));   // 15 (5 + 10)
  print(calc.add(3, 4)); // 7 (3 + 4)
}
```
- ডার্টে মেথড ওভারলোডিং সরাসরি সম্ভব না হলেও, আপনি নাম পরিবর্তন করে একই কার্যকারিতা অর্জন করতে পারেন।
### উপসংহার:
- পলিমরফিজম কোডের নমনীয়তা এবং পুনঃব্যবহারযোগ্যতা বৃদ্ধি করে। ডার্টে এটি মূলত মেথড ওভাররাইডিং এর মাধ্যমে বাস্তবায়ন করা হয়। ডার্টের পলিমরফিজমের সাহায্যে একই কোডের ভেতর বিভিন্ন ধরনের অবজেক্টের উপর কাজ করা সম্ভব, যা প্রোগ্রামকে আরও দক্ষ এবং কার্যকরী করে তোলে।

## Abstraction
- ডার্ট (Dart) ভাষায় **অ্যাবস্ট্রাকশন (Abstraction)** হলো একটি গুরুত্বপূর্ণ ধারণা, যা মূলত প্রোগ্রামের জটিলতা লুকানোর জন্য এবং ব্যবহারকারীকে শুধুমাত্র প্রয়োজনীয় তথ্য প্রদানের জন্য ব্যবহৃত হয়। অ্যাবস্ট্রাকশন এর মাধ্যমে, আমরা কিছু নির্দিষ্ট অংশের বাস্তবায়ন (implementation) লুকিয়ে রাখতে পারি, এবং শুধুমাত্র ইউজার বা ডেভেলপারকে প্রয়োজনীয় ইন্টারফেস (interface) বা আচরণ (behavior) প্রদান করতে পারি। এটি সফটওয়্যার ডিজাইনকে সহজ ও পরিষ্কার করতে সহায়ক হয়।
### ডার্টে অ্যাবস্ট্রাকশন কিভাবে কাজ করে?
- ডার্টে অ্যাবস্ট্রাকশন সাধারনত **abstract class** এবং **abstract methods** এর মাধ্যমে করা হয়।
### 1. **Abstract Class**:
- এটি একটি ক্লাস যেটি পুরোপুরি বাস্তবায়িত হয় না, বরং এটি অন্য ক্লাস দ্বারা উদাহৃত (inherit) হওয়ার জন্য তৈরি হয়। এর মধ্যে এমন মেথড থাকতে পারে যা শুধুমাত্র ঘোষণা করা হয় কিন্তু বাস্তবায়ন (implementation) দেওয়া হয় না। এই ধরনের মেথডগুলোকে **abstract methods** বলা হয়।
```dart
abstract class Animal {
  void sound();  // abstract method
  void eat() {
    print("Eating food");
  }
}
class Dog extends Animal {
  @override
  void sound() {
    print("Barking");
  }
}
class Cat extends Animal {
  @override
  void sound() {
    print("Meowing");
  }
}
void main() {
  Dog dog = Dog();
  dog.sound();  // Output: Barking
  dog.eat();    // Output: Eating food
  Cat cat = Cat();
  cat.sound();  // Output: Meowing
  cat.eat();    // Output: Eating food
}
```
### ব্যাখ্যা:

- এখানে `Animal` ক্লাসটি একটি `abstract` ক্লাস যা একটি `sound()` নামক abstract মেথড ঘোষণা করেছে।
- `Dog` এবং `Cat` ক্লাস দুটি `Animal` ক্লাস থেকে ইনহেরিট (inherit) করেছে এবং `sound()` মেথডের বাস্তবায়ন (implementation) প্রদান করেছে।
- `eat()` মেথডটি `Animal` ক্লাসে বাস্তবায়িত এবং এটি সাধারণভাবে সব প্রাণীর জন্য একই থাকবে।

### **Abstract Method**:
- একটি abstract মেথড এমন একটি মেথড যার কোনো বাস্তবায়ন নেই, শুধুমাত্র সিগনেচার (signature) থাকে। এটির বাস্তবায়ন ইনহেরিট করা ক্লাসে করতে হয়।
### অ্যাবস্ট্রাকশনের সুবিধা:
1. **সহজ ডিজাইন**: অ্যাবস্ট্রাকশন আমাদের জটিলতা লুকাতে সহায়ক, যাতে কোড আরও পরিষ্কার এবং সহজ হয়।
2. **পুনঃব্যবহারযোগ্যতা**: একবার একটি অ্যাবস্ট্রাক্ট ক্লাস তৈরি করলে, আপনি সেটি বিভিন্ন ক্লাসে ইনহেরিট করে ব্যবহার করতে পারেন।
3. **বহুমুখীতা**: একাধিক ক্লাস একে অপরের থেকে পৃথকভাবে অ্যাবস্ট্রাক্ট ক্লাস ব্যবহার করে বিভিন্ন কাজ করতে পারে, যার ফলে কোড আরও পোর্টেবল ও ফ্লেক্সিবল হয়।

# Map to JSON and JSON to Map

- JSON (JavaScript Object Notation) is a lightweight data interchange format that is easy for humans to read and write and easy for machines to parse and generate. 
- It is primarily used to transmit data between a server and a web application as text, and it is commonly used for serializing and deserializing structured data.

### JSON Structure:

JSON is composed of two main structures:
1. **Objects**: A collection of key-value pairs enclosed in curly braces `{}`. The keys are strings, and the values can be any valid JSON data type.
2. **Arrays**: An ordered list of values enclosed in square brackets `[]`. Values can be strings, numbers, objects, or even other arrays.

- In Dart, converting JSON data to a Map is a common task, especially when working with APIs or handling serialized data. Dart provides the dart:convert library, which includes functions like json.decode() to convert a JSON string into a Map. Here’s how you can work with JSON and maps in Dart.
### Steps to Convert JSON to Map in Dart:
1. **Import the `dart:convert` library**: This library contains the `json.decode()` function, which you will use to parse the JSON string.
2. **Use `json.decode()`**: This function converts a JSON string into a Dart object. In the case of JSON representing a simple object, it is converted into a `Map<String, dynamic>`, where `String` is the type of the keys and `dynamic` is the type of the values.

- Example of JSON
```dart
dart
Copy code
String jsonString =
{
  "name": "Alice",
  "age": 30,
  "isStudent": false,
  "courses": ["Math", "Science", "History"]
}
```
### Convert 
