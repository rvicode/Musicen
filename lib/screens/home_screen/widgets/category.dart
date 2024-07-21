import 'package:flutter/material.dart';
import 'package:musicen/fake_data/fake.data.dart';
import 'package:musicen/screens/play_list/play.list.screen.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
    required this.size,
    required this.textTheme,
  });

  final Size size;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final category = AppDatabase.categories;

    return SizedBox(
      width: double.infinity,
      height: size.height / 10,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
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
                    image: AssetImage(category[index].image),
                    fit: BoxFit.cover,
                  ),
                ),
                width: size.width / 3.4,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(150, 18, 18, 18),
                      Color.fromARGB(200, 18, 18, 18)
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  ),
                  child: Center(
                    child:
                        Text(category[index].name, style: textTheme.bodyMedium),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
