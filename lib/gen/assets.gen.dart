/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/check_lyrics.svg
  String get checkLyrics => 'assets/icons/check_lyrics.svg';

  /// File path: assets/icons/home.svg
  String get home => 'assets/icons/home.svg';

  /// File path: assets/icons/lib.svg
  String get lib => 'assets/icons/lib.svg';

  /// File path: assets/icons/random.svg
  String get random => 'assets/icons/random.svg';

  /// File path: assets/icons/search.svg
  String get search => 'assets/icons/search.svg';

  /// File path: assets/icons/setting.svg
  String get setting => 'assets/icons/setting.svg';

  /// List of all assets
  List<String> get values => [checkLyrics, home, lib, random, search, setting];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/categories1.png
  AssetGenImage get categories1 =>
      const AssetGenImage('assets/images/categories1.png');

  /// File path: assets/images/categories2.png
  AssetGenImage get categories2 =>
      const AssetGenImage('assets/images/categories2.png');

  /// File path: assets/images/categories3.png
  AssetGenImage get categories3 =>
      const AssetGenImage('assets/images/categories3.png');

  /// File path: assets/images/category1.png
  AssetGenImage get category1 =>
      const AssetGenImage('assets/images/category1.png');

  /// File path: assets/images/category2.png
  AssetGenImage get category2 =>
      const AssetGenImage('assets/images/category2.png');

  /// File path: assets/images/category3.png
  AssetGenImage get category3 =>
      const AssetGenImage('assets/images/category3.png');

  /// File path: assets/images/category4.png
  AssetGenImage get category4 =>
      const AssetGenImage('assets/images/category4.png');

  /// File path: assets/images/category_image_playlist.png
  AssetGenImage get categoryImagePlaylist =>
      const AssetGenImage('assets/images/category_image_playlist.png');

  /// File path: assets/images/havana.png
  AssetGenImage get havana => const AssetGenImage('assets/images/havana.png');

  /// File path: assets/images/mix1.png
  AssetGenImage get mix1 => const AssetGenImage('assets/images/mix1.png');

  /// File path: assets/images/mix2.png
  AssetGenImage get mix2 => const AssetGenImage('assets/images/mix2.png');

  /// File path: assets/images/mix3.png
  AssetGenImage get mix3 => const AssetGenImage('assets/images/mix3.png');

  /// File path: assets/images/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/images/profile.png');

  /// File path: assets/images/profile_pic.png
  AssetGenImage get profilePic =>
      const AssetGenImage('assets/images/profile_pic.png');

  /// File path: assets/images/test_category2.png
  AssetGenImage get testCategory2 =>
      const AssetGenImage('assets/images/test_category2.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        categories1,
        categories2,
        categories3,
        category1,
        category2,
        category3,
        category4,
        categoryImagePlaylist,
        havana,
        mix1,
        mix2,
        mix3,
        profile,
        profilePic,
        testCategory2
      ];
}

class $AssetsMusicGen {
  const $AssetsMusicGen();

  /// File path: assets/music/havana.mp3
  String get havana => 'assets/music/havana.mp3';

  /// List of all assets
  List<String> get values => [havana];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsMusicGen music = $AssetsMusicGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
