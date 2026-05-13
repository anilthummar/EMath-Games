import '../../../utils/exports.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// A page widget for displaying the splash screen.
///
/// This widget initializes the splash bloc and listens for state changes
/// to navigate to the login page upon success.
@RoutePage()
class SplashPage extends StatelessWidget {
  /// Creates a splash page widget.
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (BuildContext ctx) => SplashBloc(),
      child: BlocListener<SplashBloc, SplashState>(
        listener: (BuildContext context, SplashState state) async {
          if (state.status == BaseStateStatus.success && state.routeName != null) {
            unawaited(context.router.replaceNamed(state.routeName!));
          }
        },
        child: Scaffold(
          backgroundColor: AppColors.skyBlueColor,
          body: SafeArea(
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: SingleChildScrollView(
                          physics: const NeverScrollableScrollPhysics(),
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              minHeight: MediaQuery.sizeOf(context).height -
                                  (Dimens.space80 + Dimens.space24),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: Dimens.padding20,
                              ),
                              child: Column(
                                children: <Widget>[
                                  const SizedBox(height: Dimens.space40),
                                  Assets.svgs.icAppbarLogo.svg(width: Dimens.space220),
                                  const SizedBox(height: Dimens.space24),
                                  Text(
                                    context.appStrings.appNameKey,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(color: AppColors.whiteColor),
                                  ),
                                  const SizedBox(height: Dimens.space24),
                                  const _SplashProgressBar(),
                                  const SizedBox(height: Dimens.space12),
                                  Text(
                                    '${context.appStrings.loadingKey}...',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(color: AppColors.whiteColor),
                                  ),
                                  const Spacer(),
                                  SizedBox(
                                    width: Dimens.space220,
                                    child: Assets.svgs.icSplash.svg(),
                                  ),
                                  const SizedBox(height: Dimens.space20),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(
                          top: Dimens.padding20,
                          bottom: Dimens.padding20,
                        ),
                        decoration: const BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimens.radius50),
                            topRight: Radius.circular(Dimens.radius50),
                          ),
                        ),
                        child: const _VersionLabel(),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: Dimens.space16,
                  bottom: Dimens.space28,
                  child: Transform.rotate(
                    angle: -Dimens.ratio009,
                    child: Assets.svgs.icSmallBubbleBgLeft.svg(
                      width: Dimens.size48,
                      height: Dimens.size48,
                    ),
                  ),
                ),
                Positioned(
                  right: Dimens.space16,
                  bottom: Dimens.space56,
                  child: Transform.rotate(
                    angle: Dimens.ratio009,
                    child: Assets.svgs.icSmallBubbleBgRight.svg(
                      width: Dimens.size48,
                      height: Dimens.size48,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SplashProgressBar extends StatelessWidget {
  const _SplashProgressBar();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Dimens.radius20),
      child: LinearProgressIndicator(
        minHeight: Dimens.space16,
        value: Dimens.ratio75 / 100,
        valueColor: AlwaysStoppedAnimation<Color>(AppColors.instance.orangeBGColor),
        backgroundColor: AppColors.whiteColor,
      ),
    );
  }
}

class _VersionLabel extends StatelessWidget {
  const _VersionLabel();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PackageInfo>(
      future: PackageInfo.fromPlatform(),
      builder: (BuildContext context, AsyncSnapshot<PackageInfo> snapshot) {
        final String version = snapshot.data?.version ?? '';
        if (version.isEmpty) {
          return const SizedBox.shrink();
        }
        return Text(
          version,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.instance.lightGrayTextColor,
              ),
        );
      },
    );
  }
}
