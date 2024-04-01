
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_architecture/app/screen/main/main_page.dart';
import 'package:flutter_architecture/app/screen/splash/splash_cubit.dart';
import 'package:go_router/go_router.dart';

import '../screen/detail/detail_page.dart';
import '../screen/splash/splash_page.dart';

const String splashRoute = '/';
const String listRoute = '/course';
const String detailRoute = '/detail';

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
        (dynamic _) => notifyListeners(),
    );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

GoRouter buildRoutes(SplashCubit bloc) {
  return GoRouter(
      routes: <GoRoute>[
        GoRoute(
          path: splashRoute,
          builder: (BuildContext context, GoRouterState state) => const SplashPage()
        ),
        GoRoute(
            path: listRoute,
            pageBuilder: (context, state) => fadeNav(state, const MainPage())
        ),
        GoRoute(
            path: detailRoute,
            pageBuilder: (context, state) => fadeNav(state, DetailPage(link: state.extra as String,))
        ),
      ],
    redirect: (BuildContext context, GoRouterState state) {
        if(bloc.state.finish) {
          if(state.matchedLocation == splashRoute || state.matchedLocation == listRoute) {
            return listRoute;
          } else {
            return state.matchedLocation;
          }
        } else {
          return splashRoute;
        }
    },
    refreshListenable: GoRouterRefreshStream(bloc.stream)
  );
}

CustomTransitionPage<void> fadeNav(GoRouterState state, Widget child) {
  return CustomTransitionPage(
    key: ValueKey(state.path),
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(opacity: animation, child: child,),
  );
}