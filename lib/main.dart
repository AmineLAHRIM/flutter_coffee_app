import 'package:coffee_app/home_screen.dart';
import 'package:coffee_app/services/coffee_service.dart';
import 'package:coffee_app/splash_screen.dart';
import 'package:coffee_app/style/size_config.dart';
import 'package:coffee_app/style/style.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Set default `_initialized` and `_error` state to false
  bool _initialized = false;
  bool _error = false;

  // Define an async function to initialize FlutterFire
  void initializeFlutterFire() async {
    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      // Set `_error` state to true if Firebase initialization fails
      setState(() {
        _error = true;
      });
    }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (_error) {
      return MaterialApp(
        home: Scaffold(body: Container(child: Center(child: Text('Error...')))),
      );
      ;
    }

    // Show a loader until FlutterFire is initialized
    if (!_initialized) {
      return MaterialApp(
        home:
            Scaffold(body: Container(child: Center(child: Text('Loading...')))),
      );
    }

    return App();
  }
}

class App extends StatelessWidget {
  const App({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);

            return MultiProvider(
              providers: [
                ChangeNotifierProvider(
                  create: (context) => CoffeeService(),
                ),
              ],
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: AppTheme.lightTheme,
                home: SplashScreen(),
                routes: {
                  SplashScreen.routeName: (ctx) => SplashScreen(),
                  HomeScreen.routeName: (ctx) => HomeScreen(),
                },
              ),
            );
          },
        );
      },
    );
  }
}
