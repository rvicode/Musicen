import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musicen/components/colors.dart';
import 'package:musicen/screens/main_screen/main.screen.dart';

class BottomNavigation extends StatelessWidget {
  final Function(int index) onTap;
  final int selectedIndex;
  
  const BottomNavigation(
      {super.key, required this.onTap, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
  final double bottomNavigationHeight = MediaQuery.of(context).size.height/13;
    return Container(
      width: double.infinity,
      height: bottomNavigationHeight,
      decoration: const BoxDecoration(color: ThemeColor.backgroundColor),
      // Icons Navigation
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Icon 1
          BottomNavigationItem(
            iconFileName: 'home.svg',
            iconActiveFileName: 'home.svg',
            isAvtive: selectedIndex == homeIndex,
            onTap: () {
              onTap(homeIndex);
            },
          ),
          // Icon 2
          BottomNavigationItem(
              iconFileName: 'search.svg',
              iconActiveFileName: 'search.svg',
              isAvtive: selectedIndex == searchIndex,
              onTap: () {
                onTap(searchIndex);
              }),
          // Icon 3
          BottomNavigationItem(
              iconFileName: 'lib.svg',
              iconActiveFileName: 'lib.svg',
              isAvtive: selectedIndex == libIndex,
              onTap: () {
                onTap(libIndex);
              })
        ],
      ),
    );
  }
}

class BottomNavigationItem extends StatelessWidget {
  final String iconFileName;
  final String iconActiveFileName;
  final Function() onTap;
  final bool isAvtive;
  const BottomNavigationItem({
    super.key,
    required this.iconFileName,
    required this.iconActiveFileName,
    required this.onTap,
    required this.isAvtive,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: SvgPicture.asset(
          'assets/icons/$iconFileName', height: 30,
          // ignore: deprecated_member_use
          color: isAvtive ? Colors.white : Colors.grey,
        ),
      ),
    );
  }
}
