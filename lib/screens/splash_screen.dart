import 'package:flutter/material.dart';
import 'package:pragati/screens/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToWelcome();
  }

  _navigateToWelcome() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Navigator.pushReplacement(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(builder: (context) => WelcomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Image.asset(
          'assets/Pragati logo 1.png',
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.6,
          errorBuilder: (context, error, stackTrace) {
            return const Text('Error loading logo');
          },
        )
        
        ),
      ),
      bottomSheet: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Made with ❤️ in India',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
