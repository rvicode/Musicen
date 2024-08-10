import 'package:flutter/material.dart';
import 'package:musicen/components/colors.dart';
import 'package:musicen/fake_data/fake.data.dart';
import 'package:musicen/screens/search_screen/widgets/category.grid.view.dart';
import 'package:musicen/screens/search_screen/widgets/search.bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final releaseData = AppDatabase.releaseData;
    final colorPlayList = RandomColor();
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            forceMaterialTransparency: true,
            toolbarHeight: size.height / 12,
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
            ),
          ),
          backgroundColor: ThemeColor.backgroundColor,
          body: Column(
            children: [
              // Search Bar
              SearchBarView(textTheme: textTheme),

              // List Category
              CategoryGridView(
                  size: size,
                  releaseData: releaseData,
                  colorPlayList: colorPlayList,
                  textTheme: textTheme)
            ],
          ),
        ),
      ),
    );
  }
}
