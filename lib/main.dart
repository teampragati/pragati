import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:pragati/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const PragatiApp());
}

class PragatiApp extends StatelessWidget {
  const PragatiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pragati App',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
