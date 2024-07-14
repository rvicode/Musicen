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

  /// File path: assets/icons/setting.svg
  String get setting => 'assets/icons/setting.svg';

  /// List of all assets
  List<String> get values => [setting];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/image_release.png
  AssetGenImage get imageRelease =>
      const AssetGenImage('assets/images/image_release.png');

  /// File path: assets/images/image_release2.png
  AssetGenImage get imageRelease2 =>
      const AssetGenImage('assets/images/image_release2.png');

  /// File path: assets/images/mix.png
  AssetGenImage get mix => const AssetGenImage('assets/images/mix.png');

  /// File path: assets/images/mix2.png
  AssetGenImage get mix2 => const AssetGenImage('assets/images/mix2.png');

  /// File path: assets/images/mix3.png
  AssetGenImage get mix3 => const AssetGenImage('assets/images/mix3.png');

  /// File path: assets/images/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/images/profile.png');

  /// File path: assets/images/test_category.png
  AssetGenImage get testCategory =>
      const AssetGenImage('assets/images/test_category.png');

  /// File path: assets/images/test_category2.png
  AssetGenImage get testCategory2 =>
      const AssetGenImage('assets/images/test_category2.png');

  /// File path: assets/images/test_category3.png
  AssetGenImage get testCategory3 =>
      const AssetGenImage('assets/images/test_category3.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        imageRelease,
        imageRelease2,
        mix,
        mix2,
        mix3,
        profile,
        testCategory,
        testCategory2,
        testCategory3
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
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
