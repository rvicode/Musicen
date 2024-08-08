import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:musicen/components/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ThemeColor.backgroundColor,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: size.width / 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      'Search',
                      style: textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
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
                child: ListView.builder(
                  itemCount: 0,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        width: 30,
                        height: 80,
                        color: Colors.blue,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
