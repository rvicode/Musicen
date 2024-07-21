import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicen/components/colors.dart';
import 'package:musicen/screens/home_screen/widgets/all.release.dart';
import 'package:musicen/screens/home_screen/widgets/category.dart';
import 'package:musicen/screens/home_screen/widgets/play.list.dart';
import 'package:musicen/screens/widgets/drawer.main..dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;

    var scaffoldKey = GlobalKey<ScaffoldState>();

    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: DrawerMainScreen(size: size, textTheme: textTheme),
        appBar: AppBar(
          leading: Padding(
            padding:
                EdgeInsets.only(left: size.width / 20, top: size.height / 50),
            child: IconButton(
              icon: Icon(
                CupertinoIcons.line_horizontal_3,
                color: Colors.white,
                size: size.height / 30,
              ),
              onPressed: () {
                return scaffoldKey.currentState!.openDrawer();
              },
            ),
          ),
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
                      bottom: size.height / 50,
                      top: size.height / 80,
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
                      left: size.width / 20,
                      bottom: size.height / 50,
                      top: size.height / 80,
                    ),
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
                      left: size.width / 20,
                      bottom: size.height / 50,
                      top: size.height / 80,
                    ),
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
                      left: size.width / 20,
                      bottom: size.height / 50,
                      top: size.height / 80,
                    ),
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
