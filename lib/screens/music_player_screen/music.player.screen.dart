import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:just_audio/just_audio.dart';
import 'package:musicen/components/colors.dart';
import 'package:musicen/gen/assets.gen.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  final AudioPlayer audioPlayer = AudioPlayer();
  Duration? duration;
  Timer? timer;

  @override
  void initState() {
    audioPlayer.setAsset('assets/music/havana.mp3').then(
      (value) {
        duration = value;
        audioPlayer.play();
        timer = Timer.periodic(
          const Duration(milliseconds: 200),
          (timer) {
            setState(() {});
          },
        );
        setState(() {});
      },
    );
    super.initState();
  }

  bool isRandomPlay = false;
  bool isRepeat = false;
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ThemeColor.backgroundColor,
        // AppBar Music Player
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: size.height / 12,
          backgroundColor: ThemeColor.backgroundColor,
          actions: [
            SizedBox(
              width: size.width,
              height: size.height,
              // Create Icons
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
                          child: SvgPicture.asset(Assets.icons.setting,
                              height: 30),
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
        // Body Music Player
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height / 15),
              child: Center(
                child: Container(
                  width: 330,
                  height: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: DecorationImage(
                      image: AssetImage(Assets.images.havana.path),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: size.height / 30,
                  left: size.width / 10,
                  right: size.width / 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Havana',
                    style: textTheme.bodyLarge,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: size.width / 2,
                        child: Text(
                          'Camila Cabello',
                          style: textTheme.bodyMedium!
                              .apply(color: Colors.white60),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.share,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: size.width / 35,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              CupertinoIcons.heart,
                              color: TextThemeColor.mainTextColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (duration != null)
              Padding(
                padding: EdgeInsets.only(
                    top: size.height / 25,
                    bottom: 0,
                    left: size.width / 10,
                    right: size.width / 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      audioPlayer.position.toMinuesSeconds(),
                      style: textTheme.bodySmall,
                    ),
                    Text(
                      duration!.toMinuesSeconds(),
                      style: textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            if (duration != null)
              Padding(
                  padding: EdgeInsets.only(
                      left: size.width / 25, right: size.width / 25),
                  child: Slider(
                    activeColor: TextThemeColor.mainTextColor,
                    max: duration!.inMilliseconds.toDouble(),
                    value: audioPlayer.position.inMilliseconds.toDouble(),
                    onChangeStart: (value) {
                      audioPlayer.pause();
                    },
                    onChangeEnd: (value) {
                      audioPlayer.play();
                    },
                    onChanged: (value) {
                      audioPlayer.seek(Duration(milliseconds: value.toInt()));
                    },
                  )),
            Padding(
              padding: EdgeInsets.only(
                top: size.height / 35,
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: size.height / 40,
                        right: size.width / 9,
                        left: size.width / 9),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                isRandomPlay = !isRandomPlay;
                              },
                            );
                          },
                          child: SvgPicture.asset(Assets.icons.random,
                              height: size.height / 40,
                              // ignore: deprecated_member_use
                              color: isRandomPlay
                                  ? TextThemeColor.mainTextColor
                                  : Colors.white),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isRepeat = !isRepeat;
                            });
                          },
                          child: Icon(
                            CupertinoIcons.arrow_2_circlepath,
                            color: isRepeat
                                ? TextThemeColor.mainTextColor
                                : Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        CupertinoIcons.backward_end_fill,
                        color: Colors.white,
                        size: 35,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        focusColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          setState(
                            () {
                              audioPlayer.playing
                                  ? audioPlayer.pause()
                                  : audioPlayer.play();
                            },
                          );
                        },
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              audioPlayer.playing
                                  ? BoxShadow(
                                      color: TextThemeColor.mainTextColor
                                          .withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                    )
                                  : const BoxShadow()
                            ],
                            borderRadius: BorderRadius.circular(100),
                            color: TextThemeColor.mainTextColor,
                          ),
                          child: Center(
                            child: audioPlayer.playing
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
                      const SizedBox(
                        width: 15,
                      ),
                      const Icon(
                        CupertinoIcons.forward_end_fill,
                        color: Colors.white,
                        size: 35,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

extension DurationExtensions on Duration {
  /// Converts the duration into readable string
  /// 05:15
  String toHoursMinutes() {
    String twoDigitMinutes = _toTwoDigits(inMinutes.remainder(60));
    return "${_toTwoDigits(inHours)}:$twoDigitMinutes";
  }

  /// Converts the duration into a readable string
  /// 05:15:35
  String toHoursMinutesSeconds() {
    String twoDigitMinutes = _toTwoDigits(inMinutes.remainder(60));
    String twoDigitSeconds = _toTwoDigits(inSeconds.remainder(60));
    return "${_toTwoDigits(inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }

  String toMinuesSeconds() {
    String twoDigitMinutes = _toTwoDigits(inMinutes.remainder(60));
    String twoDigitSeconds = _toTwoDigits(inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }

  String _toTwoDigits(int n) {
    if (n >= 10) return "$n";
    return "0$n";
  }
}
