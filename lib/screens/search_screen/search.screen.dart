import 'package:flutter/material.dart';
import 'package:musicen/components/colors.dart';
import 'package:musicen/fake_data/fake.data.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final releaseData = AppDatabase.releaseData;
    final colorPlayList = RandomColor();
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ThemeColor.backgroundColor,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 16),
                child: Text(
                  'Search',
                  style: textTheme.headlineLarge!.apply(fontSizeFactor: 0.8),
                ),
              ),
            ],
          ),),
        backgroundColor: ThemeColor.backgroundColor,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(30, 255, 255, 255),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    style: textTheme.bodyMedium,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(
                            color: TextThemeColor.mainTextColor),
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      hintText: 'Martin Garrix',
                      hintStyle:
                          textTheme.bodyMedium!.apply(color: Colors.white38),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 30.0),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      contentPadding:
                          const EdgeInsets.only(left: 20, right: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: size.width,
                height: size.height / 1.35,
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1.7,
                  children: List.generate(
                    releaseData.length,
                    (index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                          right: index % 2 == 1 ? 16 : 13,
                          left: index % 2 == 0 ? 16 : 13,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: colorPlayList.randomColor[index],
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 11),
                                child: SizedBox(
                                  width: 100,
                                  child: Text(
                                    releaseData[index].name,
                                    style: textTheme.bodyLarge!
                                        .apply(fontSizeFactor: 0.7),
                                    maxLines: 1,
                                  ),
                                ),
                              ),
                              Transform(
                                alignment: Alignment.center,
                                transform: Matrix4.rotationZ(
                                  -3.1415926535897932 / 4,
                                ),
                                child: Image.asset(
                                  releaseData[index].image,
                                  width: 65,
                                ),
                              ),
                            ],
                          ),
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
