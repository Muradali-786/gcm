/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/ClashDisplay-Bold.otf
  String get clashDisplayBold => 'assets/fonts/ClashDisplay-Bold.otf';

  /// File path: assets/fonts/ClashDisplay-Extralight.otf
  String get clashDisplayExtralight =>
      'assets/fonts/ClashDisplay-Extralight.otf';

  /// File path: assets/fonts/ClashDisplay-Light.otf
  String get clashDisplayLight => 'assets/fonts/ClashDisplay-Light.otf';

  /// File path: assets/fonts/ClashDisplay-Medium.otf
  String get clashDisplayMedium => 'assets/fonts/ClashDisplay-Medium.otf';

  /// File path: assets/fonts/ClashDisplay-Regular.otf
  String get clashDisplayRegular => 'assets/fonts/ClashDisplay-Regular.otf';

  /// File path: assets/fonts/ClashDisplay-Semibold.otf
  String get clashDisplaySemibold => 'assets/fonts/ClashDisplay-Semibold.otf';

  /// File path: assets/fonts/Montserrat-Black.ttf
  String get montserratBlack => 'assets/fonts/Montserrat-Black.ttf';

  /// File path: assets/fonts/Montserrat-Bold.ttf
  String get montserratBold => 'assets/fonts/Montserrat-Bold.ttf';

  /// File path: assets/fonts/Montserrat-ExtraBold.ttf
  String get montserratExtraBold => 'assets/fonts/Montserrat-ExtraBold.ttf';

  /// File path: assets/fonts/Montserrat-ExtraLight.ttf
  String get montserratExtraLight => 'assets/fonts/Montserrat-ExtraLight.ttf';

  /// File path: assets/fonts/Montserrat-Light.ttf
  String get montserratLight => 'assets/fonts/Montserrat-Light.ttf';

  /// File path: assets/fonts/Montserrat-Medium.ttf
  String get montserratMedium => 'assets/fonts/Montserrat-Medium.ttf';

  /// File path: assets/fonts/Montserrat-Regular.ttf
  String get montserratRegular => 'assets/fonts/Montserrat-Regular.ttf';

  /// File path: assets/fonts/Montserrat-SemiBold.ttf
  String get montserratSemiBold => 'assets/fonts/Montserrat-SemiBold.ttf';

  /// File path: assets/fonts/Montserrat-Thin.ttf
  String get montserratThin => 'assets/fonts/Montserrat-Thin.ttf';

  /// File path: assets/fonts/Poppins-Black.ttf
  String get poppinsBlack => 'assets/fonts/Poppins-Black.ttf';

  /// File path: assets/fonts/Poppins-Bold.ttf
  String get poppinsBold => 'assets/fonts/Poppins-Bold.ttf';

  /// File path: assets/fonts/Poppins-ExtraBold.ttf
  String get poppinsExtraBold => 'assets/fonts/Poppins-ExtraBold.ttf';

  /// File path: assets/fonts/Poppins-Light.ttf
  String get poppinsLight => 'assets/fonts/Poppins-Light.ttf';

  /// File path: assets/fonts/Poppins-Medium.ttf
  String get poppinsMedium => 'assets/fonts/Poppins-Medium.ttf';

  /// File path: assets/fonts/Poppins-Regular.ttf
  String get poppinsRegular => 'assets/fonts/Poppins-Regular.ttf';

  /// File path: assets/fonts/Poppins-SemiBold.ttf
  String get poppinsSemiBold => 'assets/fonts/Poppins-SemiBold.ttf';

  /// File path: assets/fonts/Poppins-Thin.ttf
  String get poppinsThin => 'assets/fonts/Poppins-Thin.ttf';

  /// List of all assets
  List<String> get values => [
        clashDisplayBold,
        clashDisplayExtralight,
        clashDisplayLight,
        clashDisplayMedium,
        clashDisplayRegular,
        clashDisplaySemibold,
        montserratBlack,
        montserratBold,
        montserratExtraBold,
        montserratExtraLight,
        montserratLight,
        montserratMedium,
        montserratRegular,
        montserratSemiBold,
        montserratThin,
        poppinsBlack,
        poppinsBold,
        poppinsExtraBold,
        poppinsLight,
        poppinsMedium,
        poppinsRegular,
        poppinsSemiBold,
        poppinsThin
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/academics.svg
  String get academics => 'assets/icons/academics.svg';

  /// File path: assets/icons/dashboard.svg
  String get dashboard => 'assets/icons/dashboard.svg';

  /// File path: assets/icons/notfication.svg
  String get notfication => 'assets/icons/notfication.svg';

  /// File path: assets/icons/notify.svg
  String get notify => 'assets/icons/notify.svg';

  /// File path: assets/icons/reports.svg
  String get reports => 'assets/icons/reports.svg';

  /// File path: assets/icons/setting.svg
  String get setting => 'assets/icons/setting.svg';

  /// File path: assets/icons/subject.svg
  String get subject => 'assets/icons/subject.svg';

  /// List of all assets
  List<String> get values =>
      [academics, dashboard, notfication, notify, reports, setting, subject];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bg.png
  AssetGenImage get bg => const AssetGenImage('assets/images/bg.png');

  /// File path: assets/images/csr.png
  AssetGenImage get csr => const AssetGenImage('assets/images/csr.png');

  /// File path: assets/images/emp.png
  AssetGenImage get emp => const AssetGenImage('assets/images/emp.png');

  /// List of all assets
  List<AssetGenImage> get values => [bg, csr, emp];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
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
    bool gaplessPlayback = true,
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
