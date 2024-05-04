import 'package:flutter/material.dart';
import 'package:splashscreen/homepage.dart';

class SplashTWOScreen extends StatefulWidget {
  const SplashTWOScreen({super.key});

  @override
  State<SplashTWOScreen> createState() => _SplashTWOScreenState();
}

class _SplashTWOScreenState extends State<SplashTWOScreen> {
  gotonextscreen() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) {
            return HomeScreen();
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
        title: Text("Splash Two"),
      ),
      body: Container(
        alignment: Alignment.center,
        height: double.infinity,
        width: double.infinity,
        color: Colors.amber.withOpacity(0.2),
        child: Column(
          children: [
            Image.asset(
              "assets/splashscreentwo.png",
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
