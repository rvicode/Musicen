import 'package:flutter/material.dart';
import 'package:musicen/fake_data/fake.data.dart';
import 'package:musicen/screens/play_list/play.list.dart';

class NewPlayLists extends StatelessWidget {
  const NewPlayLists({
    super.key,
    required this.size,
    required this.textTheme,
  });

  final Size size;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final playlist = AppDatabase.playlistyDataData;
    return SizedBox(
      width: double.infinity,
      height: size.height / 6,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: playlist.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? size.width / 20 : 10,
              top: 8,
              right: playlist.length - 1 == index ? 20 : 5,
              bottom: 5,
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const PlayList()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(playlist[index].image),
                    fit: BoxFit.cover,
                  ),
                ),
                width: size.width / 1.5,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(0, 0, 0, 0),
                        Color.fromARGB(200, 12, 12, 12),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          playlist[index].name,
                          style: textTheme.bodyMedium,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '${playlist[index].count} singles (2024)',
                          style: textTheme.bodySmall,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
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

class PlayLists extends StatelessWidget {
  const PlayLists({
    super.key,
    required this.size,
    required this.textTheme,
  });

  final Size size;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final playlist = AppDatabase.playlistyDataData;
    return SizedBox(
      width: double.infinity,
      height: size.height / 6,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: playlist.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? size.width / 20 : 10,
              top: 8,
              right: playlist.length - 1 == index ? 20 : 5,
              bottom: 5,
            ),
            child: InkWell(
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
                    image: AssetImage(playlist[index].image),
                    fit: BoxFit.cover,
                  ),
                ),
                width: size.width / 1.5,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(0, 0, 0, 0),
                      Color.fromARGB(200, 12, 12, 12)
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          playlist[index].name,
                          style: textTheme.bodyMedium,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '${playlist[index].count} singles (2024)',
                          style: textTheme.bodySmall,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
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
