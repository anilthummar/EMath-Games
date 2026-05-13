import '../../../utils/exports.dart';

/// A middleware for handling authentication during navigation.
///
/// This middleware checks if the user is logged in and redirects to the dashboard if true.
class AuthenticationMiddleWare extends AutoRouteGuard {
  @override
  Future<void> onNavigation(NavigationResolver resolver, StackRouter router) async {
    final bool isLogin = SharedPref.instance.getBool(SharedPref.isLoggedInKey, false);
    if (isLogin) {
      await resolver.redirect(const DashboardRoute());
    } else {
      resolver.next();
    }
  }
}
