import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musicen/components/colors.dart';
import 'package:musicen/gen/assets.gen.dart';
import 'package:musicen/screens/play_list/play.list.dart';

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
                        onTap: () {
                          
                        },
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
              SizedBox(
                width: double.infinity,
                height: size.height / 10,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? 15 : 5,
                        top: 8,
                        right: 5,
                        bottom: 5,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PlayList(),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image:
                                  AssetImage(Assets.images.testCategory.path),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: size.width / 3.4,
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(150, 18, 18, 18),
                                    Color.fromARGB(200, 18, 18, 18)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                            ),
                            child: Center(
                              child: Text('Rap', style: textTheme.bodyMedium),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: size.height / 10,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? 15 : 5,
                        top: 8,
                        right: 5,
                        bottom: 5,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PlayList()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                      Assets.images.testCategory.path),
                                  fit: BoxFit.cover)),
                          width: size.width / 3.4,
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(150, 18, 18, 18),
                                    Color.fromARGB(200, 18, 18, 18)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                            ),
                            child: Center(
                              child: Text('Rap', style: textTheme.bodyMedium),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
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
              SizedBox(
                height: size.height / 3.6,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: index == 0 ? size.width / 20 : 10, right: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Container(
                              height: size.height / 5.4,
                              width: size.width / 2.7,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(Assets.images.mix.path),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: size.height / 6,
                            height: 70,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'El Dollop',
                                  style: textTheme.bodyMedium!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: size.height / 200,
                                ),
                                Text(
                                  'Sonoro | All Things Comedy',
                                  style: textTheme.bodySmall!
                                      .apply(fontSizeFactor: 0.8),
                                  maxLines: 2,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
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
              SizedBox(
                width: double.infinity,
                height: size.height / 6,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? size.width / 20 : 10,
                        top: 8,
                        right: 5,
                        bottom: 5,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PlayList()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image:
                                  AssetImage(Assets.images.imageRelease.path),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: size.width / 1.5,
                          child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(0, 0, 0, 0),
                                    Color.fromARGB(200, 12, 12, 12),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, bottom: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Uncovered - Robin Schulz',
                                      style: textTheme.bodyMedium,
                                    ),
                                    Text(
                                      '18 singles (2017)',
                                      style: textTheme.bodySmall,
                                    )
                                  ],
                                ),
                              )),
                        ),
                      ),
                    );
                  },
                ),
              ),
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
              SizedBox(
                height: size.height / 3.6,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: index == 0 ? size.width / 20 : 10, right: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Container(
                              height: size.height / 5.4,
                              width: size.width / 2.7,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(Assets.images.mix.path),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: size.height / 6,
                            height: 70,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'El Dollop',
                                  style: textTheme.bodyMedium!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: size.height / 200,
                                ),
                                Text(
                                  'Sonoro | All Things Comedy',
                                  style: textTheme.bodySmall!
                                      .apply(fontSizeFactor: 0.8),
                                  maxLines: 2,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
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
              SizedBox(
                width: double.infinity,
                height: size.height / 6,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? size.width / 20 : 10,
                        top: 8,
                        right: 5,
                        bottom: 5,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PlayList()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image:
                                  AssetImage(Assets.images.imageRelease.path),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: size.width / 1.5,
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(0, 0, 0, 0),
                                    Color.fromARGB(200, 12, 12, 12)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, bottom: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Uncovered - Robin Schulz',
                                    style: textTheme.bodyMedium,
                                  ),
                                  Text(
                                    '18 singles (2017)',
                                    style: textTheme.bodySmall,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
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
