import 'package:auto_route/auto_route.dart';

import '../../../features/auth/login/login_view.dart';
import '../../../features/auth/register/register_view.dart';
import '../../../features/chat/chat_view.dart';
import '../../../features/dashboard/view/dashboard_view.dart';
import '../../../features/history/history_view.dart';
import '../../../features/onboard/onboard_view.dart';
import '../../../features/splash/splash_view.dart';
import '../../constants/app_routes_constant.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          path: AppRoutesConstant.routeSplash,
          initial: true,
        ),
        AutoRoute(
          page: LoginRoute.page,
          path: AppRoutesConstant.routeAuthLogin,
        ),
        AutoRoute(
          page: RegisterRoute.page,
          path: AppRoutesConstant.routeAuthRegister,
        ),
        AutoRoute(
            page: DashboardRoute.page,
            path: AppRoutesConstant.routeDashboard,
            children: [
              AutoRoute(
                page: HistoryRoute.page,
                path: AppRoutesConstant.routeHistory,
                initial: true,
              ),
              AutoRoute(
                page: ChatRoute.page,
                path: AppRoutesConstant.routeChat,
              ),
            ]),
        //  AutoRoute(
        //   page: UserDetailRoute.page,
        //   path: AppRoutes.routeAdminUserDetail,
        //   fullscreenDialog: true,
        // ),
        // AutoRoute(
        //   page: UnknownRoute.page,
        //   path: '*',
        // ),
      ];
}
