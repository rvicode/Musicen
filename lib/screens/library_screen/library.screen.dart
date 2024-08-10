import 'package:flutter/material.dart';
import 'package:musicen/components/colors.dart';
import 'package:musicen/fake_data/fake.data.dart';
import 'package:musicen/screens/library_screen/widgets/add.new.play.list.dart';
import 'package:musicen/screens/library_screen/widgets/like.songs.icon.dart';

class LibScreen extends StatefulWidget {
  const LibScreen({super.key});

  @override
  State<LibScreen> createState() => _LibScreenState();
}

int selectedIndex = 0;

class _LibScreenState extends State<LibScreen> {
  @override
  Widget build(BuildContext context) {
    final categoryList = AppDatabase.categoryList;
    final releaseData = AppDatabase.releaseData;
    final textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    var height = releaseData.length * (size.height / 9);

    return SafeArea(
      child: Scaffold(
        backgroundColor: ThemeColor.backgroundColor,
        appBar: AppBar(
          forceMaterialTransparency: true,
          toolbarHeight: size.height / 12,
          backgroundColor: ThemeColor.backgroundColor,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 6),
                child: Text(
                  'Your Library',
                  style: textTheme.headlineLarge!.apply(fontSizeFactor: 0.8),
                ),
              ),
            ],
          ),
        ),

        // Body
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Category List Bar
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ListView.builder(
                    itemCount: categoryList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          top: 8,
                          bottom: 5,
                          left: index == 0 ? size.width / 20 : 10,
                          right: categoryList.length - 1 == index ? 20 : 5,
                        ),
                        child: Container(
                          height: 28,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.grey),
                          child: GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  selectedIndex = index;
                                },
                              );
                            },
                            child: Container(
                              margin:
                                  const EdgeInsets.fromLTRB(1.5, 1.5, 1.5, 1.5),
                              height: 25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: index == selectedIndex
                                      ? TextThemeColor.mainTextColor
                                      : ThemeColor.backgroundColor),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 4, right: 16, left: 16, bottom: 2),
                                child: Text(categoryList[index].name),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              // Add New Play Lists Icon
              AddNewPlayList(size: size, textTheme: textTheme),

              // Like Songs Icon
              LikeSongsIcon(size: size, textTheme: textTheme),

              Padding(
                padding: const EdgeInsets.only(top: 32, left: 24),
                child: Text(
                  'Recently played',
                  style: textTheme.headlineLarge!.apply(fontSizeFactor: 0.5),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, left: 12, right: 24, bottom: 70),
                child: SizedBox(
                  width: double.infinity,
                  height: height,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: releaseData.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: double.infinity,
                        height: height / releaseData.length,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: index == 0 ? 16 : 8,
                                  right: 12,
                                  left: 12,
                                  bottom:
                                      releaseData.length - 1 == index ? 16 : 8),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  releaseData[index].image,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(releaseData[index].name),
                                Text(releaseData[index].category,
                                    style: textTheme.bodySmall),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
