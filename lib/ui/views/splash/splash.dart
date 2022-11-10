import 'package:first/ui/views/home/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1)).then((value) =>
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1868A8),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.white,
          child: const FlutterLogo(
            size: 150,
            duration: Duration(seconds: 1),
            curve: Curves.bounceOut,
          ),
        ),
      ),
    );
  }
}
