import 'package:flutter/material.dart';
import 'package:flutterfinal/screens/lesson_screen.dart';

import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/vocabulary_screen.dart';

void main() {
  runApp(LanguageLearningApp());
}

class LanguageLearningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Language Learning App',
      theme: ThemeData(primarySwatch: Colors.indigo, fontFamily: 'Roboto'),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),

        '/vocabulary': (context) => VocabularyScreen(),
        '/lessons': (context) => LessonScreen(), // OR LessonScreen
      },
    );
  }
}
