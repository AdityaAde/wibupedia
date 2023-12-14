/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $GoogleFontsGen {
  const $GoogleFontsGen();

  /// File path: google_fonts/Urbanist-Bold.ttf
  String get urbanistBold => 'google_fonts/Urbanist-Bold.ttf';

  /// File path: google_fonts/Urbanist-Light.ttf
  String get urbanistLight => 'google_fonts/Urbanist-Light.ttf';

  /// File path: google_fonts/Urbanist-Medium.ttf
  String get urbanistMedium => 'google_fonts/Urbanist-Medium.ttf';

  /// File path: google_fonts/Urbanist-Regular.ttf
  String get urbanistRegular => 'google_fonts/Urbanist-Regular.ttf';

  /// File path: google_fonts/Urbanist-Thin.ttf
  String get urbanistThin => 'google_fonts/Urbanist-Thin.ttf';

  /// List of all assets
  List<String> get values => [
        urbanistBold,
        urbanistLight,
        urbanistMedium,
        urbanistRegular,
        urbanistThin
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/bookmarks-icon.png
  AssetGenImage get bookmarksIcon =>
      const AssetGenImage('assets/icons/bookmarks-icon.png');

  /// File path: assets/icons/email-icon.png
  AssetGenImage get emailIcon =>
      const AssetGenImage('assets/icons/email-icon.png');

  /// File path: assets/icons/facebook-icon.png
  AssetGenImage get facebookIcon =>
      const AssetGenImage('assets/icons/facebook-icon.png');

  /// File path: assets/icons/filter-icon.png
  AssetGenImage get filterIcon =>
      const AssetGenImage('assets/icons/filter-icon.png');

  /// File path: assets/icons/google-icon.png
  AssetGenImage get googleIcon =>
      const AssetGenImage('assets/icons/google-icon.png');

  /// File path: assets/icons/home-icon.png
  AssetGenImage get homeIcon =>
      const AssetGenImage('assets/icons/home-icon.png');

  /// File path: assets/icons/lock-icon.png
  AssetGenImage get lockIcon =>
      const AssetGenImage('assets/icons/lock-icon.png');

  /// File path: assets/icons/person-icon.png
  AssetGenImage get personIcon =>
      const AssetGenImage('assets/icons/person-icon.png');

  /// File path: assets/icons/search-icon.png
  AssetGenImage get searchIcon =>
      const AssetGenImage('assets/icons/search-icon.png');

  /// File path: assets/icons/star-icon.png
  AssetGenImage get starIcon =>
      const AssetGenImage('assets/icons/star-icon.png');

  /// File path: assets/icons/twitter-icon.png
  AssetGenImage get twitterIcon =>
      const AssetGenImage('assets/icons/twitter-icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        bookmarksIcon,
        emailIcon,
        facebookIcon,
        filterIcon,
        googleIcon,
        homeIcon,
        lockIcon,
        personIcon,
        searchIcon,
        starIcon,
        twitterIcon
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/lets-in.png
  AssetGenImage get letsIn => const AssetGenImage('assets/images/lets-in.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/onboarding.png
  AssetGenImage get onboarding =>
      const AssetGenImage('assets/images/onboarding.png');

  /// List of all assets
  List<AssetGenImage> get values => [letsIn, logo, onboarding];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/loading.json
  String get loading => 'assets/lottie/loading.json';

  /// List of all assets
  List<String> get values => [loading];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
  static const $GoogleFontsGen googleFonts = $GoogleFontsGen();
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
