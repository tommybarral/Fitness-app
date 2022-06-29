import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import './screens/welcome_screen_android.dart';
import './screens/welcome_screen_apple.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final platform = Theme.of(context).platform;
    final androidPlatform = platform == TargetPlatform.android;
    return  (androidPlatform)
        ? const MaterialApp(debugShowCheckedModeBanner: false, home: WelcomeScreenAndroid())
        : const CupertinoApp(debugShowCheckedModeBanner: false, home: WelcomeScreenApple(),);
  }
}
