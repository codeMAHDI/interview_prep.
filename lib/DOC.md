1. vs code(Code editor)- no dev tools
2. Intellij IDEA(" + IDE(Dev tool available))
3. Jetbens are famous for IDE Development.
4. Flutter is a framework(Building) and Dart(Build bananor jonno materials gula) is programming language.

# SDK

Think of the Flutter SDK like a box of tools that includes everything you need to make beautiful apps:
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

const(works in compile time)-> porobortite value change kora jay na ekbar value diye dile.
final(works in run time)-> porobortite value assign kora jabe variable declare er por. But ekbar assign kore felle ta change kora jabe na.
1. const a initially value set korte hobe.
2. final a initially value set na korleo pore jeta set hobe shetai final hobe.

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
2. Material app: a pre-built widget in Flutter that sets up your app with Material Design — Google’s design language for mobile and web apps. MaterialApp is like the main frame of your app — it handles things like: Theme, routes, Home, title, Debug banner.

## Why use MaterialApp?
1. Gives access to Material widgets like Scaffold, AppBar, FloatingActionButton, etc.
2. Makes your app look and feel like a real Android app.

