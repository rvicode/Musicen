import 'package:flutter/material.dart';
import 'package:musicen/components/colors.dart';
import 'package:musicen/fake_data/fake.data.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({
    super.key,
    required this.size,
    required this.releaseData,
    required this.colorPlayList,
    required this.textTheme,
  });

  final Size size;
  final List<ReleaseData> releaseData;
  final RandomColor colorPlayList;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height / 1.4,
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
    );
  }
}
