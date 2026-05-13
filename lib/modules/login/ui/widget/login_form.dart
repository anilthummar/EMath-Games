import '../../../../utils/exports.dart';

/// A form widget for handling user login.
///
/// This widget provides a responsive login form that adapts to mobile, tablet,
/// and desktop layouts.
class LoginForm extends BaseResponsiveView {
  /// Creates a login form widget.
  const LoginForm({super.key});

  @override
  Widget buildTabletWidget(BuildContext context) {
    return _loginForm(context);
  }

  @override
  Widget buildDesktopWidget(BuildContext context) {
    return _loginForm(context);
  }

  @override
  Widget buildMobileWidget(BuildContext context) {
    return _loginForm(context);
  }

  /// Builds the login form widget.
  Widget _loginForm(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (BuildContext context, LoginState state) {
        if (state.status == BaseStateStatus.success &&
            state.routeName != null) {
          unawaited(context.router.replaceNamed(state.routeName!));
        }
        if (state.status == BaseStateStatus.failure &&
            (state.errorMessage?.isNotEmpty ?? false)) {
          context.showAppSnackBar(
              state.errorMessage ?? context.appStrings.somethingWentWrongKey);
        }
      },
      listenWhen: (LoginState previous, LoginState current) =>
          previous.routeName != current.routeName ||
          previous.status != current.status,
      child: ColoredBox(
        color: AppColors.skyBlueColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.padding16),
            child: Column(
              children: <Widget>[
                const SizedBox(height: Dimens.space32),
                Assets.svgs.icAppbarLogo.svg(width: Dimens.space220),
                const SizedBox(height: Dimens.space24),
                _GuideBubble(message: context.appStrings.startGuideMessageKey),
                const SizedBox(height: Dimens.space16),
                const _OperationsShowcase(),
                const Spacer(),
                CustomButtonWidget(
                  text: context.appStrings.startNowKey,
                  backgroundColor: AppColors.yellowColor,
                  textStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppColors.darkBlueColor,
                      ),
                  onClick: () {
                    context.read<LoginBloc>().add(const LoginEvent.submitted());
                  },
                ),
                const SizedBox(height: Dimens.space32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _GuideBubble extends StatelessWidget {
  const _GuideBubble({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimens.space220,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: MediaQuery.sizeOf(context).width * Dimens.ratio06,
              padding: const EdgeInsets.symmetric(
                horizontal: Dimens.padding20,
                vertical: Dimens.padding30,
              ),
              decoration: const BoxDecoration(
                color: AppColors.whiteColor,
                shape: BoxShape.circle,
              ),
              child: Text(
                message,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColors.instance.mediumGrayTextColor,
                    ),
              ),
            ),
          ),
          const Positioned(
            left: Dimens.space56,
            bottom: Dimens.space24,
            child: _ThoughtBubbleDot(size: Dimens.size25),
          ),
          const Positioned(
            left: Dimens.space72,
            bottom: Dimens.space56,
            child: _ThoughtBubbleDot(size: Dimens.size18),
          ),
          const Positioned(
            left: Dimens.space80,
            bottom: Dimens.space80,
            child: _ThoughtBubbleDot(size: Dimens.size14),
          ),
        ],
      ),
    );
  }
}

class _ThoughtBubbleDot extends StatelessWidget {
  const _ThoughtBubbleDot({required this.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        color: AppColors.whiteColor,
        shape: BoxShape.circle,
      ),
    );
  }
}

class _OperationsShowcase extends StatelessWidget {
  const _OperationsShowcase();

  @override
  Widget build(BuildContext context) {
    final List<_OperationItem> items = <_OperationItem>[
      _OperationItem(
        title: context.appStrings.additionKey,
        symbol: '+',
        color: AppColors.yellowColor,
        icon: Assets.png.startAddition,
      ),
      _OperationItem(
        title: context.appStrings.subtractionKey,
        symbol: '-',
        color: AppColors.pinkColor,
        icon: Assets.png.startSubtraction,
      ),
      _OperationItem(
        title: context.appStrings.multiplicationKey,
        symbol: 'x',
        color: AppColors.greenColor,
        icon: Assets.png.startMultiplication,
      ),
      _OperationItem(
        title: context.appStrings.divisionKey,
        symbol: '÷',
        color: AppColors.orangeColor,
        icon: Assets.png.startDivision,
      ),
    ];
    return SizedBox(
      height: Dimens.space220,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomLeft,
            child: Assets.png.startCharacter.image(
              width: Dimens.space145,
              fit: BoxFit.contain,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width * Dimens.ratio06,
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: Dimens.space16,
                runSpacing: Dimens.space12,
                children: items
                    .map(
                      (_OperationItem item) => _OperationCard(item: item),
                    )
                    .toList(growable: false),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _OperationCard extends StatelessWidget {
  const _OperationCard({required this.item});

  final _OperationItem item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimens.space112,
      height: Dimens.space80,
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: ClipPath(
              clipper: _HexagonClipper(),
              child: ColoredBox(color: item.color),
            ),
          ),
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: AppColors.blackColor
                        .withValues(alpha: Dimens.opacity014),
                    blurRadius: Dimens.radius10,
                    offset: const Offset(Dimens.zero, Dimens.space5),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(Dimens.padding10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  item.icon.image(width: Dimens.space28, height: Dimens.space28),
                  const SizedBox(height: Dimens.space4),
                  Text(
                    '${item.title} ${item.symbol}',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: AppColors.whiteColor,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _OperationItem {
  const _OperationItem({
    required this.title,
    required this.symbol,
    required this.color,
    required this.icon,
  });

  final String title;
  final String symbol;
  final Color color;
  final AssetGenImage icon;
}

class _HexagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path()
      ..moveTo(size.width * Dimens.ratio02, Dimens.zero)
      ..lineTo(size.width * (1 - Dimens.ratio02), Dimens.zero)
      ..lineTo(size.width, size.height * Dimens.ratio05)
      ..lineTo(size.width * (1 - Dimens.ratio02), size.height)
      ..lineTo(size.width * Dimens.ratio02, size.height)
      ..lineTo(Dimens.zero, size.height * Dimens.ratio05)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
