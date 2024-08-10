import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:musicen/screens/main_screen/main.screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const MainScreen(),
          ),
          (route) => false,
        );
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black,
        ),
        Center(
          child: Text(
            'Musicen',
            style: textTheme.headlineLarge,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height / 1.2),
          child: Center(
            child: LoadingAnimationWidget.staggeredDotsWave(
              color: Colors.grey,
              size: 50,
            ),
          ),
        )
      ],
    );
  }
}
