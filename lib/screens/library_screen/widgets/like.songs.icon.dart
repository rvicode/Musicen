import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LikeSongsIcon extends StatelessWidget {
  const LikeSongsIcon({
    super.key,
    required this.size,
    required this.textTheme,
  });

  final Size size;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: 32, left: size.width / 20, right: size.width / 3.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              gradient: const LinearGradient(
                  colors: [
                    Color(0xff00C2CB),
                    Color.fromRGBO(155, 243, 255, 1),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter),
            ),
            child: const Center(
              child: Icon(CupertinoIcons.heart),
            ),
          ),
          Text(
            'Your Liked Songs',
            style: textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
