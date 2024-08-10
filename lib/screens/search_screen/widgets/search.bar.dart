import 'package:flutter/material.dart';
import 'package:musicen/components/colors.dart';

class SearchBarView extends StatelessWidget {
  const SearchBarView({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
