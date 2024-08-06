import 'package:flutter/material.dart';
import 'package:musicen/fake_data/fake.data.dart';
import 'package:musicen/screens/music_player/music.player.dart';

class NewRelease extends StatelessWidget {
  const NewRelease({
    super.key,
    required this.size,
    required this.textTheme,
  });

  final Size size;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final releaseMusic = AppDatabase.releaseData;
    return SizedBox(
      height: size.height / 3.6,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: releaseMusic.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
                left: index == 0 ? size.width / 20 : 10,
                right: releaseMusic.length - 1 == index ? 20 : 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MusicPlayer()));
              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Container(
                      height: size.height / 5.4,
                      width: size.width / 2.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(releaseMusic[index].image),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.height / 6,
                    height: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          releaseMusic[index].name,
                          style: textTheme.bodyMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: size.height / 200,
                        ),
                        Text(
                          releaseMusic[index].category,
                          style:
                              textTheme.bodySmall!.apply(fontSizeFactor: 0.8),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Release extends StatelessWidget {
  const Release({
    super.key,
    required this.size,
    required this.textTheme,
  });

  final Size size;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final releaseMusic = AppDatabase.releaseData;
    return SizedBox(
      height: size.height / 3.6,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: releaseMusic.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
                left: index == 0 ? size.width / 20 : 10,
                right: releaseMusic.length - 1 == index ? 20 : 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MusicPlayer(),
                  ),
                );
              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Container(
                      height: size.height / 5.4,
                      width: size.width / 2.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(releaseMusic[index].image),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.height / 6,
                    height: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          releaseMusic[index].name,
                          style: textTheme.bodyMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: size.height / 200,
                        ),
                        Text(
                          releaseMusic[index].category,
                          style:
                              textTheme.bodySmall!.apply(fontSizeFactor: 0.8),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
