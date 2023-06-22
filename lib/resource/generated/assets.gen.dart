/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesJpgGen get jpg => const $AssetsImagesJpgGen();
  $AssetsImagesPngGen get png => const $AssetsImagesPngGen();
  $AssetsImagesSvgGen get svg => const $AssetsImagesSvgGen();
  $AssetsImagesWebpGen get webp => const $AssetsImagesWebpGen();
}

class $AssetsImagesJpgGen {
  const $AssetsImagesJpgGen();

  /// File path: assets/images/jpg/bath1.jpeg
  AssetGenImage get bath1 =>
      const AssetGenImage('assets/images/jpg/bath1.jpeg');

  /// File path: assets/images/jpg/bath2.jpeg
  AssetGenImage get bath2 =>
      const AssetGenImage('assets/images/jpg/bath2.jpeg');

  /// File path: assets/images/jpg/bath3.jpeg
  AssetGenImage get bath3 =>
      const AssetGenImage('assets/images/jpg/bath3.jpeg');

  /// File path: assets/images/jpg/bath4.jpeg
  AssetGenImage get bath4 =>
      const AssetGenImage('assets/images/jpg/bath4.jpeg');

  /// File path: assets/images/jpg/bath5.jpeg
  AssetGenImage get bath5 =>
      const AssetGenImage('assets/images/jpg/bath5.jpeg');

  /// File path: assets/images/jpg/bath6.jpeg
  AssetGenImage get bath6 =>
      const AssetGenImage('assets/images/jpg/bath6.jpeg');

  /// File path: assets/images/jpg/bath7.jpeg
  AssetGenImage get bath7 =>
      const AssetGenImage('assets/images/jpg/bath7.jpeg');

  /// File path: assets/images/jpg/bathproduct.jpeg
  AssetGenImage get bathproduct =>
      const AssetGenImage('assets/images/jpg/bathproduct.jpeg');

  /// File path: assets/images/jpg/product1.jpeg
  AssetGenImage get product1 =>
      const AssetGenImage('assets/images/jpg/product1.jpeg');

  /// File path: assets/images/jpg/product2.jpeg
  AssetGenImage get product2 =>
      const AssetGenImage('assets/images/jpg/product2.jpeg');

  /// File path: assets/images/jpg/product3.jpeg
  AssetGenImage get product3 =>
      const AssetGenImage('assets/images/jpg/product3.jpeg');

  /// File path: assets/images/jpg/product4.jpeg
  AssetGenImage get product4 =>
      const AssetGenImage('assets/images/jpg/product4.jpeg');

  /// File path: assets/images/jpg/product5.jpeg
  AssetGenImage get product5 =>
      const AssetGenImage('assets/images/jpg/product5.jpeg');

  /// File path: assets/images/jpg/product6.jpeg
  AssetGenImage get product6 =>
      const AssetGenImage('assets/images/jpg/product6.jpeg');

  /// File path: assets/images/jpg/slider1.jpeg
  AssetGenImage get slider1 =>
      const AssetGenImage('assets/images/jpg/slider1.jpeg');

  /// File path: assets/images/jpg/slider2.jpeg
  AssetGenImage get slider2 =>
      const AssetGenImage('assets/images/jpg/slider2.jpeg');

  /// File path: assets/images/jpg/slider3.jpeg
  AssetGenImage get slider3 =>
      const AssetGenImage('assets/images/jpg/slider3.jpeg');

  /// File path: assets/images/jpg/slider4.jpeg
  AssetGenImage get slider4 =>
      const AssetGenImage('assets/images/jpg/slider4.jpeg');

  /// File path: assets/images/jpg/womencare.jpeg
  AssetGenImage get womencare =>
      const AssetGenImage('assets/images/jpg/womencare.jpeg');

  /// List of all assets
  List<AssetGenImage> get values => [
        bath1,
        bath2,
        bath3,
        bath4,
        bath5,
        bath6,
        bath7,
        bathproduct,
        product1,
        product2,
        product3,
        product4,
        product5,
        product6,
        slider1,
        slider2,
        slider3,
        slider4,
        womencare
      ];
}

class $AssetsImagesPngGen {
  const $AssetsImagesPngGen();

  /// File path: assets/images/png/firstcry.png
  AssetGenImage get firstcry =>
      const AssetGenImage('assets/images/png/firstcry.png');

  /// File path: assets/images/png/menu.png
  AssetGenImage get menu => const AssetGenImage('assets/images/png/menu.png');

  /// File path: assets/images/png/slider1.png
  AssetGenImage get slider1 =>
      const AssetGenImage('assets/images/png/slider1.png');

  /// List of all assets
  List<AssetGenImage> get values => [firstcry, menu, slider1];
}

class $AssetsImagesSvgGen {
  const $AssetsImagesSvgGen();
}

class $AssetsImagesWebpGen {
  const $AssetsImagesWebpGen();

  /// File path: assets/images/webp/shop.webp
  AssetGenImage get shop => const AssetGenImage('assets/images/webp/shop.webp');

  /// File path: assets/images/webp/shop1.webp
  AssetGenImage get shop1 =>
      const AssetGenImage('assets/images/webp/shop1.webp');

  /// List of all assets
  List<AssetGenImage> get values => [shop, shop1];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
