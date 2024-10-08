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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(
                width: size.width / 2,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: size.width / 20, top: size.height / 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Arvin Veisy',
                        style: textTheme.bodyMedium!.apply(fontWeightDelta: 2),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'arvinvisi03@gmail.com ',
                        style: textTheme.bodySmall,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
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
          Padding(
            padding: const EdgeInsets.only(left: 32, top: 20),
            child: InkWell(
              focusColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {},
              child: SizedBox(
                height: size.height / 20,
                width: double.infinity,
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
          Padding(
            padding: const EdgeInsets.only(left: 32, top: 20),
            child: InkWell(
              focusColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {},
              child: SizedBox(
                height: size.height / 20,
                width: double.infinity,
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
          Padding(
            padding: const EdgeInsets.only(left: 32, top: 20),
            child: InkWell(
              focusColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {},
              child: SizedBox(
                height: size.height / 20,
                width: double.infinity,
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
