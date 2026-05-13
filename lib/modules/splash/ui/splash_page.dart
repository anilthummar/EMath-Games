import '../../../utils/exports.dart';

/// A page widget for displaying the splash screen.
///
/// This widget initializes the splash bloc and listens for state changes
/// to navigate to the start screen upon success.
@RoutePage()
class SplashPage extends StatefulWidget {
  /// Creates a splash page widget.
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin {
  late AnimationController _progressController;
  late Animation<double> _progressAnimation;

  @override
  void initState() {
    super.initState();
    _progressController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: Dimens.duration3),
    );
    unawaited(_progressController.repeat());
    _progressAnimation = Tween<double>(
      begin: Dimens.splashProgressTweenStart,
      end: Dimens.splashProgressTweenEnd,
    ).animate(
      CurvedAnimation(parent: _progressController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _progressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (BuildContext ctx) => SplashBloc(),
      child: BlocListener<SplashBloc, SplashState>(
        listener: (BuildContext context, SplashState state) {
          if (state.status == BaseStateStatus.success && state.routeName != null) {
            // unawaited(context.router.replaceNamed(state.routeName!));
          }
        },
        child: Scaffold(
          backgroundColor: AppColors.primaryColor,
          body: Stack(
            children: <Widget>[
              Positioned(
                top: -Dimens.space60,
                right: -Dimens.space60,
                child: Container(
                  width: Dimens.size200,
                  height: Dimens.size200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.whiteColor.withValues(alpha: Dimens.opacity008),
                  ),
                ),
              ),
              Positioned(
                top: Dimens.space40,
                left: -Dimens.space80,
                child: Container(
                  width: Dimens.space180,
                  height: Dimens.space180,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.whiteColor.withValues(alpha: Dimens.opacity006),
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Expanded(
                    flex: Dimens.splashTopExpandedFlex,
                    child: Column(
                      children: <Widget>[
                        const SizedBox(height: Dimens.space40),
                        Assets.svgs.icAppLogo.svg(
                          width: Dimens.splashLogoSvgWidth,
                          height: Dimens.splashLogoSvgWidth,
                        ),
                        // CustomSvgAssetWidget(
                        //   asset: Assets.svgs.icAppLogo,
                        //   width: Dimens.splashLogoSvgWidth,
                        //   semanticsLabel: context.appStrings.appNameKey,
                        // ),
                        const SizedBox(height: Dimens.space24),
                        CustomTextLabelWidget(
                          label: context.appStrings.appNameKey,
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: AppColors.whiteColor,
                                letterSpacing: Dimens.letterSpacingSplashTitle,
                              ),
                        ),
                        const SizedBox(height: Dimens.space20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: Dimens.space48),
                          child: AnimatedBuilder(
                            animation: _progressAnimation,
                            builder: (BuildContext context, Widget? _) {
                              return Column(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(Dimens.radius12),
                                    child: SizedBox(
                                      height: Dimens.space10,
                                      child: LinearProgressIndicator(
                                        value: _progressAnimation.value,
                                        backgroundColor:
                                            AppColors.whiteColor.withValues(alpha: Dimens.opacity03),
                                        valueColor: const AlwaysStoppedAnimation<Color>(
                                          AppColors.secondaryColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: Dimens.space10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      CustomTextLabelWidget(
                                        label: context.appStrings.splashInfinitySymbolKey,
                                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                              color: AppColors.whiteColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      const SizedBox(width: Dimens.space6),
                                      CustomTextLabelWidget(
                                        label: context.appStrings.loadingKey,
                                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                              color: AppColors.whiteColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: Dimens.space16),
                        Expanded(
                          child: Center(
                            child: SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: CustomSvgAssetWidget(
                                asset: Assets.svgs.icIllustration,
                                width: Dimens.splashIllustrationSvgWidth,
                                semanticsLabel: context.appStrings.appNameKey,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: Dimens.space12),
                      ],
                    ),
                  ),
                  const _CurvedBottomSection(),
                ],
              ),
              const Positioned(
                bottom: Dimens.space32,
                left: Dimens.space28,
                child: _DiamondFab(
                  color: AppColors.green,
                  size: Dimens.space48,
                  child: _MinusGlyph(),
                ),
              ),
              const Positioned(
                bottom: Dimens.space24,
                right: Dimens.space24,
                child: _DiamondFab(
                  color: AppColors.secondaryColor,
                  size: Dimens.space56,
                  child: _PlusGlyph(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CurvedBottomSection extends StatelessWidget {
  const _CurvedBottomSection();

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _TopCurveClipper(),
      child: Container(
        color: AppColors.whiteColor,
        height: Dimens.space120,
        width: double.infinity,
        alignment: Alignment.bottomCenter,
        padding: const EdgeInsets.only(bottom: Dimens.padding16),
        child: FutureBuilder<PackageInfo>(
          future: PackageInfo.fromPlatform(),
          builder: (BuildContext context, AsyncSnapshot<PackageInfo> snapshot) {
            final String version = snapshot.data?.version ?? '';
            if (version.isEmpty) {
              return const SizedBox.shrink();
            }
            return CustomTextLabelWidget(
              label: '${context.appStrings.splashVersionPrefixKey} $version',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.mediumGrey,
                    fontWeight: FontWeight.w500,
                    letterSpacing: Dimens.letterSpacingVersionLabel,
                  ),
            );
          },
        ),
      ),
    );
  }
}

class _TopCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path()
      ..moveTo(Dimens.zero, Dimens.space40)
      ..quadraticBezierTo(
        size.width * Dimens.ratio05,
        -Dimens.space20,
        size.width,
        Dimens.space40,
      )
      ..lineTo(size.width, size.height)
      ..lineTo(Dimens.zero, size.height)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

/// Diamond-shaped control: outer square rotated π/4, child counter-rotated.
class _DiamondFab extends StatelessWidget {
  const _DiamondFab({
    required this.color,
    required this.size,
    required this.child,
  });

  final Color color;
  final double size;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: Dimens.splashDiamondOuterRotationRad,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(Dimens.radius8),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: color.withValues(alpha: Dimens.opacity04),
              blurRadius: Dimens.space12,
              offset: const Offset(Dimens.zero, Dimens.space4),
            ),
          ],
        ),
        alignment: Alignment.center,
        child: Transform.rotate(
          angle: Dimens.splashDiamondInnerRotationRad,
          child: child,
        ),
      ),
    );
  }
}

/// White horizontal bar for the green FAB (no icon font).
class _MinusGlyph extends StatelessWidget {
  const _MinusGlyph();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimens.space20,
      height: Dimens.borderWidth3,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(Dimens.radius4),
      ),
    );
  }
}

/// White plus drawn without icon fonts (two bars).
class _PlusGlyph extends StatelessWidget {
  const _PlusGlyph();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimens.space28,
      height: Dimens.space28,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            width: Dimens.space28,
            height: Dimens.borderWidth3,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(Dimens.radius4),
            ),
          ),
          Container(
            width: Dimens.borderWidth3,
            height: Dimens.space28,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(Dimens.radius4),
            ),
          ),
        ],
      ),
    );
  }
}
