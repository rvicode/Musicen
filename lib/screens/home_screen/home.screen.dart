import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musicen/components/colors.dart';
import 'package:musicen/gen/assets.gen.dart';
import 'package:musicen/screens/home_screen/widgets/all.release.dart';
import 'package:musicen/screens/home_screen/widgets/category.dart';
import 'package:musicen/screens/home_screen/widgets/paly.list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          toolbarHeight: size.height / 12,
          backgroundColor: ThemeColor.backgroundColor,
          actions: [
            SizedBox(
              width: size.width,
              height: size.height,
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        focusColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: size.height / 25, right: size.width / 25),
                          child: SvgPicture.asset(Assets.icons.setting,
                              height: 30),
                        ),
                      ),
                    ],
                  ),
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
                ],
              ),
            ),
          ],
        ),
        backgroundColor: ThemeColor.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              Category(size: size, textTheme: textTheme),
              Category(size: size, textTheme: textTheme),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: size.width / 20,
                      bottom: 18,
                      top: 10,
                    ),
                    child: Text(
                      'New Release',
                      style: textTheme.headlineMedium,
                    ),
                  ),
                ],
              ),
              NewRelease(size: size, textTheme: textTheme),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: size.width / 20, bottom: 10, top: 10),
                    child: Text(
                      'New Play Lists',
                      style: textTheme.headlineMedium,
                    ),
                  ),
                ],
              ),
              NewPlayLists(size: size, textTheme: textTheme),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: size.width / 20, bottom: 18, top: 10),
                    child: Text(
                      'Music',
                      style: textTheme.headlineMedium,
                    ),
                  ),
                ],
              ),
              Release(size: size, textTheme: textTheme),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: size.width / 20, bottom: 10, top: 10),
                    child: Text(
                      'Play Lists',
                      style: textTheme.headlineMedium,
                    ),
                  ),
                ],
              ),
              PlayLists(size: size, textTheme: textTheme),
              SizedBox(
                height: size.height / 11,
              ),
            ],
          ),
        ),
      ),
    );
  }
  }
