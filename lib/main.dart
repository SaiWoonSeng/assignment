import 'package:assignment/onboarding.dart';
import 'package:assignment/splash.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? initScreen;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = preferences.getInt('initScreen');
  await preferences.setInt('initScreen', 1);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute:
          initScreen == 0 || initScreen == null ? 'onboard' : 'splash',
      routes: {
        'splash': (context) => const Splash(),
        'onboard': (context) => const OnBoarding(),
      },
    );
  }
}
