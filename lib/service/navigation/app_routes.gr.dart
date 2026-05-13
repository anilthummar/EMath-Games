// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i17;
import 'package:flutter_base/modules/achievements/ui/achievements_page.dart'
    as _i1;
import 'package:flutter_base/modules/custom_pagination/ui/widget/custom_pagination_page.dart'
    as _i3;
import 'package:flutter_base/modules/dashboard/ui/dashboard_page.dart' as _i4;
import 'package:flutter_base/modules/force_update_under_maintenance/ui/force_update_under_maintenance_page.dart'
    as _i5;
import 'package:flutter_base/modules/leaderboard/ui/leaderboard_page.dart'
    as _i6;
import 'package:flutter_base/modules/learning/ui/learning_page.dart' as _i7;
import 'package:flutter_base/modules/page_not_found/ui/page_not_found_page.dart'
    as _i8;
import 'package:flutter_base/modules/quiz/ui/quiz_page.dart' as _i9;
import 'package:flutter_base/modules/settings/ui/settings_page.dart' as _i10;
import 'package:flutter_base/modules/splash/ui/splash_page.dart' as _i11;
import 'package:flutter_base/modules/start_screen/ui/start_screen_page.dart'
    as _i12;
import 'package:flutter_base/modules/tab_one/ui/tab_one_page.dart' as _i14;
import 'package:flutter_base/modules/tab_one_detail/ui/tab_one_detail_page.dart'
    as _i13;
import 'package:flutter_base/modules/tab_two/ui/tab_two_page.dart' as _i16;
import 'package:flutter_base/modules/tab_two_detail/ui/tab_two_detail_page.dart'
    as _i15;
import 'package:flutter_base/service/navigation/app_routes.dart' as _i2;
import 'package:flutter_base/utils/exports.dart' as _i18;

abstract class $AppRouter extends _i17.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i17.PageFactory> pagesMap = {
    AchievementsRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AchievementsPage(),
      );
    },
    TabOne.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BottomBarTabOnePage(),
      );
    },
    CustomPaginationRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CustomPaginationPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.DashboardPage(),
      );
    },
    ForceUpdateUnderMaintenanceRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ForceUpdateUnderMaintenancePage(),
      );
    },
    LeaderboardRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.LeaderboardPage(),
      );
    },
    LearningRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LearningPage(),
      );
    },
    RouteNotFound.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.PageNotFound(),
      );
    },
    QuizRoute.name: (routeData) {
      final args = routeData.argsAs<QuizRouteArgs>();
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.QuizPage(
          operation: args.operation,
          difficulty: args.difficulty,
          key: args.key,
        ),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SettingsPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SplashPage(),
      );
    },
    StartScreenRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.StartScreenPage(),
      );
    },
    TabOneDetailRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.TabOneDetailPage(),
      );
    },
    TabOneRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.TabOnePage(),
      );
    },
    TabTwoDetailRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.TabTwoDetailPage(),
      );
    },
    TabTwoRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.TabTwoPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AchievementsPage]
class AchievementsRoute extends _i17.PageRouteInfo<void> {
  const AchievementsRoute({List<_i17.PageRouteInfo>? children})
      : super(
          AchievementsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AchievementsRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BottomBarTabOnePage]
class TabOne extends _i17.PageRouteInfo<void> {
  const TabOne({List<_i17.PageRouteInfo>? children})
      : super(
          TabOne.name,
          initialChildren: children,
        );

  static const String name = 'TabOne';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CustomPaginationPage]
class CustomPaginationRoute extends _i17.PageRouteInfo<void> {
  const CustomPaginationRoute({List<_i17.PageRouteInfo>? children})
      : super(
          CustomPaginationRoute.name,
          initialChildren: children,
        );

  static const String name = 'CustomPaginationRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i4.DashboardPage]
class DashboardRoute extends _i17.PageRouteInfo<void> {
  const DashboardRoute({List<_i17.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ForceUpdateUnderMaintenancePage]
class ForceUpdateUnderMaintenanceRoute extends _i17.PageRouteInfo<void> {
  const ForceUpdateUnderMaintenanceRoute({List<_i17.PageRouteInfo>? children})
      : super(
          ForceUpdateUnderMaintenanceRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForceUpdateUnderMaintenanceRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LeaderboardPage]
class LeaderboardRoute extends _i17.PageRouteInfo<void> {
  const LeaderboardRoute({List<_i17.PageRouteInfo>? children})
      : super(
          LeaderboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'LeaderboardRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LearningPage]
class LearningRoute extends _i17.PageRouteInfo<void> {
  const LearningRoute({List<_i17.PageRouteInfo>? children})
      : super(
          LearningRoute.name,
          initialChildren: children,
        );

  static const String name = 'LearningRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i8.PageNotFound]
class RouteNotFound extends _i17.PageRouteInfo<void> {
  const RouteNotFound({List<_i17.PageRouteInfo>? children})
      : super(
          RouteNotFound.name,
          initialChildren: children,
        );

  static const String name = 'RouteNotFound';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i9.QuizPage]
class QuizRoute extends _i17.PageRouteInfo<QuizRouteArgs> {
  QuizRoute({
    required _i18.QuizOperation operation,
    required _i18.QuizDifficulty difficulty,
    _i18.Key? key,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          QuizRoute.name,
          args: QuizRouteArgs(
            operation: operation,
            difficulty: difficulty,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'QuizRoute';

  static const _i17.PageInfo<QuizRouteArgs> page =
      _i17.PageInfo<QuizRouteArgs>(name);
}

class QuizRouteArgs {
  const QuizRouteArgs({
    required this.operation,
    required this.difficulty,
    this.key,
  });

  final _i18.QuizOperation operation;

  final _i18.QuizDifficulty difficulty;

  final _i18.Key? key;

  @override
  String toString() {
    return 'QuizRouteArgs{operation: $operation, difficulty: $difficulty, key: $key}';
  }
}

/// generated route for
/// [_i10.SettingsPage]
class SettingsRoute extends _i17.PageRouteInfo<void> {
  const SettingsRoute({List<_i17.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SplashPage]
class SplashRoute extends _i17.PageRouteInfo<void> {
  const SplashRoute({List<_i17.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i12.StartScreenPage]
class StartScreenRoute extends _i17.PageRouteInfo<void> {
  const StartScreenRoute({List<_i17.PageRouteInfo>? children})
      : super(
          StartScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'StartScreenRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i13.TabOneDetailPage]
class TabOneDetailRoute extends _i17.PageRouteInfo<void> {
  const TabOneDetailRoute({List<_i17.PageRouteInfo>? children})
      : super(
          TabOneDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabOneDetailRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i14.TabOnePage]
class TabOneRoute extends _i17.PageRouteInfo<void> {
  const TabOneRoute({List<_i17.PageRouteInfo>? children})
      : super(
          TabOneRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabOneRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i15.TabTwoDetailPage]
class TabTwoDetailRoute extends _i17.PageRouteInfo<void> {
  const TabTwoDetailRoute({List<_i17.PageRouteInfo>? children})
      : super(
          TabTwoDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabTwoDetailRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i16.TabTwoPage]
class TabTwoRoute extends _i17.PageRouteInfo<void> {
  const TabTwoRoute({List<_i17.PageRouteInfo>? children})
      : super(
          TabTwoRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabTwoRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}
