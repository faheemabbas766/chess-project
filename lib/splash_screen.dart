import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fimi_tiger/views/main_menu_view.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navigateToNextScreen() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => MainMenuView()));
    });
    navigateToNextScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
                height: 50
            ),
            TextLiquidFill(
              text: 'FiMi Chess',
              waveColor: Colors.green,
              boxBackgroundColor: Colors.redAccent,
              textStyle: TextStyle(
                fontSize: 80.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 40.0,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('Powered By:'),
                  WavyAnimatedText('Faheem Abbas'),
                ],
                isRepeatingAnimation: true,
                onTap: () {
                  navigateToNextScreen();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
