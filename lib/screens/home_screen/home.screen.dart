import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musicen/components/colors.dart';
import 'package:musicen/gen/assets.gen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: size.height / 12,
          backgroundColor: ThemeColor.backgroundColor,
          actions: [
            SizedBox(
              width: size.width,
              height: size.height,
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: size.height / 50),
                        child: Text(
                          'Musicen',
                          style: textTheme.headlineLarge,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    focusColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: (){},
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: size.height / 25, right: size.width / 25),
                      child: SvgPicture.asset(Assets.icons.setting, height: 30),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: ThemeColor.backgroundColor,
        body: const Column(
          children: [],
        ),
      ),
    );
  }
}
