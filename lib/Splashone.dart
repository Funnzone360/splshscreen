import 'package:flutter/material.dart';
import 'package:splashscreen/splashtwo.dart';

class SplashONEScreen extends StatefulWidget {
  const SplashONEScreen({super.key});

  @override
  State<SplashONEScreen> createState() => _SplashONEScreenState();
}

class _SplashONEScreenState extends State<SplashONEScreen> {
  gotonextscreen() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) {
            return SplashTWOScreen();
          },
        ),
      );
    });
  }

  @override
  void initState() {
    gotonextscreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Splash Page One "),
      ),
      body: Container(
        alignment: Alignment.center,
        height: double.infinity,
        width: double.infinity,
        color: Colors.amber.withOpacity(0.2),
        child: Column(
          children: [
            Image.asset(
              "assets/splashscreenone.png",
              width: 100,
              height: 100,
            ),
            Text(
              "Dreams Become's True",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
