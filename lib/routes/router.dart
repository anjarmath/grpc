import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rcgp_checker/riverpod/navigator_key_provider.dart';
import 'package:rcgp_checker/view/screen/home_screen.dart';
import 'package:rcgp_checker/view/screen/result/result_screen.dart';
import 'package:rcgp_checker/view/screen/test/masalah_screen.dart';
import 'package:rcgp_checker/view/screen/test/test_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final routeNavigator = ref.watch(routeNavigatorKeyProvider);
  return GoRouter(
    navigatorKey: routeNavigator,
    initialLocation: '/',
    routes: [
      GoRoute(
        parentNavigatorKey: routeNavigator,
        name: 'home',
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        parentNavigatorKey: routeNavigator,
        name: 'masalah',
        path: '/masalah',
        builder: (context, state) => const MasalahScreen(),
      ),
      GoRoute(
        parentNavigatorKey: routeNavigator,
        name: 'test',
        path: '/test',
        builder: (context, state) => const TestScreen(),
      ),
      GoRoute(
        parentNavigatorKey: routeNavigator,
        name: 'result',
        path: '/result',
        builder: (context, state) => const ResultScreen(),
      ),
    ],
  );
});
