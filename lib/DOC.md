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

**Full state change=> hot restart, je change ta instant dekhte chacchi=> hot reload**
**AOT->Ahead of time->AOT compilation->hot restart, JIT->Just in time->JIT compilation->hot reload**

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

   createState()->Called once when the widget is created, Creates the State object.(@override State<MyWidget> createState() => _MyWidgetState();)
   ↓
   initState()->Called once when the State is inserted into the widget tree, Use it to initialize data, start animations, etc.
   ↓
   build()->Called every time UI needs to be updated, Returns the UI of the widget. ←→ didUpdateWidget()->Called when the parent widget changes and needs to update this widget. It is called when the parent widget (like MyApp) rebuilds and passes new data to the StatefulWidget (like MyHomePage), causing it to update.
   ↓
   dispose()->Called when the widget is removed from the tree, Clean up (e.g., close streams, controllers). 
   
# Android Folder

analysis_option.yaml-> Code er vhul bahir korte use hoy.
test-> code gula right/wrong sheta test kora jay. UI test, Unit test, Widget test, Integration test.

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

