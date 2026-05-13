import '../../../../utils/exports.dart';

/// A page that displays the dashboard with tabs.
///
/// This page uses [AutoTabsRouter] to manage tab navigation and displays
/// a [BottomNavigationBar] for switching between tabs.
@RoutePage()
class DashboardPage extends BaseResponsiveView {
  /// The constructor for [DashboardPage].
  const DashboardPage({super.key});

  /// Builds the view for the dashboard page.
  ///
  /// [context] is the build context.
  Widget _buildView(BuildContext context) {
    return BlocProvider<DashboardBloc>(
      create: (_) => DashboardBloc(),
      child: AutoTabsRouter(
        builder: (BuildContext context, Widget child) {
          final TabsRouter tabsRouter = AutoTabsRouter.of(context);
          return BlocListener<DashboardBloc, DashboardState>(
            listenWhen: (DashboardState previous, DashboardState current) =>
                previous.selectedIndex != current.selectedIndex,
            listener: (BuildContext context, DashboardState state) {
              tabsRouter.setActiveIndex(state.selectedIndex);
            },
            child: Scaffold(
              appBar: AppBar(
                title: Text(context.appStrings.dashboardPageKey),
                centerTitle: true,
                actions: <Widget>[
                  IconButton(
                    onPressed: () {
                      unawaited(context.router.pushNamed(AppPaths.settings));
                    },
                    icon: const Icon(Icons.settings_outlined),
                  ),
                ],
              ),
              body: child,
              bottomNavigationBar: BlocBuilder<DashboardBloc, DashboardState>(
                builder: (BuildContext context, DashboardState state) {
                  return BottomNavigationBar(
                    items: _bottomItems(context),
                    currentIndex: state.selectedIndex,
                    onTap: (int index) => context
                        .read<DashboardBloc>()
                        .add(DashboardEvent.tabChanged(index)),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }

  List<BottomNavigationBarItem> _bottomItems(BuildContext context) {
    return <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(
          Icons.book_outlined,
          color: AppColors.instance.orangeBGColor,
        ),
        activeIcon: Icon(
          Icons.book,
          color: AppColors.instance.orangeBGColor,
        ),
        label: context.appStrings.tab1Key,
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.translate_outlined,
          color: AppColors.instance.orangeBGColor,
        ),
        activeIcon: Icon(
          Icons.translate,
          color: AppColors.instance.orangeBGColor,
        ),
        label: context.appStrings.tab2Key,
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.pageview_outlined,
          color: AppColors.instance.orangeBGColor,
        ),
        activeIcon: Icon(
          Icons.pageview,
          color: AppColors.instance.orangeBGColor,
        ),
        label: context.appStrings.tab3Key,
      ),
    ];
  }

  @override
  Widget buildDesktopWidget(BuildContext context) {
    return _buildView(context);
  }

  @override
  Widget buildMobileWidget(BuildContext context) {
    return _buildView(context);
  }

  @override
  Widget buildTabletWidget(BuildContext context) {
    return _buildView(context);
  }
}
