import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musicen/components/colors.dart';
import 'package:musicen/gen/assets.gen.dart';

class PlayList extends StatefulWidget {
  const PlayList({super.key});

  @override
  State<PlayList> createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
  bool isPlay = false;
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        automaticallyImplyLeading: false,
        toolbarHeight: size.height / 12,
        backgroundColor: ThemeColor.backgroundColor,
        actions: [
          SizedBox(
            width: size.width,
            height: size.height,
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      focusColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: size.height / 25, right: size.width / 25),
                        child:
                            SvgPicture.asset(Assets.icons.setting, height: 30),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width / 20,
                    ),
                    InkWell(
                      focusColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: size.height / 25,
                          right: size.width / 25,
                        ),
                        child: const Icon(
                          CupertinoIcons.arrow_left,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: ThemeColor.backgroundColor,
      body: Column(
        children: [
          Center(
            child: Container(
              margin:
                  EdgeInsets.fromLTRB(0, size.height / 45, 0, size.height / 45),
              height: size.height / 3.5,
              width: size.width / 1.7,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    Assets.images.categoryImagePlaylist.path,
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      size.width / 20,
                      size.height / 50,
                      size.width / 50,
                      size.height / 50,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: size.width / 1.5,
                          child: Text(
                            'CASO.63',
                            style: textTheme.bodyLarge,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                            child: Text(
                          '12h 45min',
                          style: textTheme.bodySmall,
                        ))
                      ],
                    ),
                  ),
                ],
              ),
              InkWell(
                focusColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  setState(() {
                    isPlay = !isPlay;
                  });
                },
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    boxShadow: [
                      isPlay
                          ? BoxShadow(
                              color: Colors.blue.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                            )
                          : const BoxShadow()
                    ],
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: isPlay
                        ? const Icon(
                            CupertinoIcons.pause_fill,
                            size: 30,
                            color: Colors.white,
                          )
                        : const Icon(
                            CupertinoIcons.play_arrow_solid,
                            size: 30,
                            color: Colors.white,
                          ),
                  ),
                ),
              ),
              const SizedBox(),
            ],
          ),
          SizedBox(
            width: double.infinity,
            height: size.height / 2.6,
            child: ListView.builder(
              itemCount: 9,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(
                      size.width / 20, index == 0 ? 24 : 8, size.width / 20, 8),
                  child: SizedBox(
                    height: size.height / 12,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            Assets.images.mix3.path,
                            width: size.width / 6,
                          ),
                        ),
                        SizedBox(
                          width: size.width / 16,
                        ),
                        SizedBox(
                          height: size.height,
                          width: size.width / 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Guns for Hire (from the series Arcane League of Loard',
                                style: textTheme.bodyMedium!
                                    .apply(fontSizeFactor: 0.9),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: size.height / 100,
                              ),
                              SizedBox(
                                width: size.width / 2.4,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset(Assets.icons.checkLyrics),
                                    Container(
                                      height: 20,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            50, 244, 244, 244),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'LYRICS',
                                          style: textTheme.bodyMedium!
                                              .apply(fontSizeFactor: 0.8),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Category 1',
                                      style: textTheme.bodySmall,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: size.width / 9,
                        ),
                        const Icon(
                          CupertinoIcons.ellipsis_vertical,
                          color: Colors.white54,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
