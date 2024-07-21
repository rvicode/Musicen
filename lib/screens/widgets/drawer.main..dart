import 'package:flutter/material.dart';
import 'package:musicen/components/colors.dart';
import 'package:musicen/gen/assets.gen.dart';

class DrawerMainScreen extends StatelessWidget {
  const DrawerMainScreen({
    super.key,
    required this.size,
    required this.textTheme,
  });

  final Size size;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ThemeColor.backgroundColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: size.width / 20, top: size.height / 40),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: SizedBox(
                    width: size.width / 6,
                    child: Assets.images.profilePic.image(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: size.width / 20, top: size.height / 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Arvin Veisy',
                      style: textTheme.bodyMedium!.apply(fontWeightDelta: 2),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'arvinvisi03@gmail.com',
                      style: textTheme.bodySmall,
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: size.height / 20,
          ),
          const Divider(
            color: Colors.white24,
          ),
          InkWell(
            onTap: () {},
            child: SizedBox(
              height: size.height / 20,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Edit profile',
                  style: textTheme.bodyMedium,
                ),
              ),
            ),
          ),
          const Divider(
            color: Colors.white24,
          ),
          InkWell(
            onTap: () {},
            child: SizedBox(
              height: size.height / 20,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Setting',
                  style: textTheme.bodyMedium,
                ),
              ),
            ),
          ),
          const Divider(
            color: Colors.white24,
          ),
          InkWell(
            onTap: () {},
            child: SizedBox(
              height: size.height / 20,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Log Out',
                  style: textTheme.bodyMedium,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
