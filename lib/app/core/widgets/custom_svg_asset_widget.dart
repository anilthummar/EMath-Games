import '../../../utils/exports.dart';

/// Local bundle SVG from FlutterGen — use instead of wiring `SvgPicture` manually.
class CustomSvgAssetWidget extends StatelessWidget {
  /// Creates a widget that displays a vector asset from the app bundle.
  const CustomSvgAssetWidget({
    super.key,
    required this.asset,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.semanticsLabel,
    this.alignment = Alignment.center,
  });

  /// Gen asset reference (e.g. `Assets.svgs.icAppLogo` from generated assets).
  final SvgGenImage asset;

  /// Optional width.
  final double? width;

  /// Optional height.
  final double? height;

  /// How to inscribe the picture in the layout box.
  final BoxFit fit;

  /// Accessibility label.
  final String? semanticsLabel;

  /// Alignment within the layout box.
  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    return asset.svg(
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      semanticsLabel: semanticsLabel,
    );
  }
}
