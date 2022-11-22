import 'package:culture_capture/constants.dart';
import 'package:culture_capture/init_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Phoenix(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Culture Capture',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kSecondaryColor, scaffoldBackgroundColor: Colors.white),
      home: const MainPage(),
    );
  }
}
