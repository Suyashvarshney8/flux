// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// import 'Home.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flux Predictor',
//       theme: ThemeData(
//         primaryColor: Colors.indigo,
//         secondaryHeaderColor: Colors.indigoAccent,
//         brightness: Brightness.dark,
//       ),
//       home: SplashScreen(), // Displaying SplashScreen initially
//     );
//   }
// }

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(
//       Duration(seconds: 0), // Display splash screen for 4 seconds
//       () {
//         Navigator.of(context).pushReplacement(
//           // Navigate to HomeScreen after 4 seconds
//           MaterialPageRoute(
//             builder: (BuildContext context) => Homepage(),
//           ),
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: FlutterLogo(
//           size: 200,
//         ),
//       ),
//     );
//   }
// }

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flux Predictor',
      theme: ThemeData(
        primaryColor: Colors.indigo,
        secondaryHeaderColor: Colors.indigoAccent,
        brightness: Brightness.dark,
      ),
      home: SplashScreen(), // Displaying SplashScreen initially
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..repeat();
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.linear,
    );
    Timer(
      Duration(seconds: 4), // Display splash screen for 4 seconds
      () {
        Navigator.of(context).pushReplacement(
          // Navigate to HomeScreen after 4 seconds
          MaterialPageRoute(
            builder: (BuildContext context) => Homepage(),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 20), // Adjust the horizontal padding as needed
              child: Text(
                'Please wait while we load the app for you...',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            AnimatedBuilder(
              animation: _animation,
              builder: (BuildContext context, Widget? child) {
                return Transform.rotate(
                  angle: _animation.value * 2 * 3.14,
                  child: Container(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(
                      color: Colors.indigo,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
