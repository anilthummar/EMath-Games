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
      duration: const Duration(seconds: 3),
    );
    unawaited(_progressController.repeat());
    _progressAnimation = Tween<double>(begin: 0, end: 1).animate(
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
          backgroundColor: const Color(0xFF29ABE2),
          body: Stack(
            children: <Widget>[
              Positioned(
                top: -60,
                right: -60,
                child: Container(
                  width: Dimens.size200,
                  height: Dimens.size200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withValues(alpha: 0.08),
                  ),
                ),
              ),
              Positioned(
                top: Dimens.space40,
                left: -Dimens.space80,
                child: Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withValues(alpha: 0.06),
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Expanded(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(height: 60),
                        const _LogoBlock(),
                        const SizedBox(height: Dimens.space40),
                        Text(
                          context.appStrings.appNameKey,
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: AppColors.whiteColor,
                                letterSpacing: 1.2,
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
                                        backgroundColor: Colors.white.withValues(alpha: 0.3),
                                        valueColor: const AlwaysStoppedAnimation<Color>(
                                          Color(0xFFF5A623),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: Dimens.space10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        '∞',
                                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                              color: AppColors.whiteColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      const SizedBox(width: Dimens.space6),
                                      Text(
                                        context.appStrings.loadingKey,
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
                      ],
                    ),
                  ),
                  const _CurvedBottomSection(),
                ],
              ),
              const Positioned(
                bottom: Dimens.space32,
                left: Dimens.space28,
                child: _CircleFab(
                  color: Color(0xFF4CAF50),
                  size: Dimens.space48,
                  child: _MinusGlyph(),
                ),
              ),
              const Positioned(
                bottom: Dimens.space24,
                right: Dimens.space24,
                child: _CircleFab(
                  color: Color(0xFFF5A623),
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

class _LogoBlock extends StatelessWidget {
  const _LogoBlock();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: const Color(0xFFE91E8C),
            borderRadius: BorderRadius.circular(Dimens.radius20),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.2),
                blurRadius: Dimens.space12,
                offset: const Offset(0, Dimens.space6),
              ),
            ],
          ),
          alignment: Alignment.center,
          child: Text(
            'E',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: Dimens.fontSize60,
                  fontWeight: FontWeight.w900,
                  color: AppColors.whiteColor,
                  height: 1,
                ),
          ),
        ),
        Positioned(
          bottom: -Dimens.space16,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: Dimens.padding14,
              vertical: Dimens.padding4,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFF1565C0),
              borderRadius: BorderRadius.circular(Dimens.radius8),
              border: Border.all(color: AppColors.whiteColor, width: Dimens.borderWidth3),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                _ColorLetter('M', Color(0xFFF5A623)),
                _ColorLetter('a', Color(0xFFE91E8C)),
                _ColorLetter('t', Color(0xFF4CAF50)),
                _ColorLetter('h', Color(0xFFF5A623)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _ColorLetter extends StatelessWidget {
  const _ColorLetter(this.letter, this.color);

  final String letter;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      letter,
      style: TextStyle(
        fontSize: Dimens.fontSize24,
        fontWeight: FontWeight.w900,
        color: color,
        shadows: const <Shadow>[
          Shadow(
            color: Color(0x40000000),
            blurRadius: Dimens.space4,
            offset: Offset(1, 2),
          ),
        ],
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
        height: 120,
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
            return Text(
              'Version $version',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: const Color(0xFF90A4AE),
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
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
      ..moveTo(0, Dimens.space40)
      ..quadraticBezierTo(size.width / 2, -Dimens.space20, size.width, Dimens.space40)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class _CircleFab extends StatelessWidget {
  const _CircleFab({
    required this.color,
    required this.size,
    required this.child,
  });

  final Color color;
  final double size;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: color.withValues(alpha: 0.4),
            blurRadius: Dimens.space12,
            offset: const Offset(0, Dimens.space4),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: child,
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
