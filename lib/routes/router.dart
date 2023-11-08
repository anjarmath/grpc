import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rcgp_checker/riverpod/navigator_key_provider.dart';
import 'package:rcgp_checker/view/screen/clinic/clinic_choice_screen.dart';
import 'package:rcgp_checker/view/screen/clinic/clinic_screen.dart';
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
        name: 'masalah',
        path: '/masalah',
        builder: (context, state) => MasalahScreen(
          type: state.queryParameters["type"],
        ),
        parentNavigatorKey: routeNavigator,
      ),
      GoRoute(
        parentNavigatorKey: routeNavigator,
        name: 'test',
        path: '/test',
        builder: (context, state) => TestScreen(
          type: state.queryParameters["type"],
        ),
      ),
      GoRoute(
        parentNavigatorKey: routeNavigator,
        name: 'result',
        path: '/result',
        builder: (context, state) => const ResultScreen(),
      ),
      GoRoute(
        parentNavigatorKey: routeNavigator,
        name: 'clinic-choice',
        path: '/clinic',
        builder: (context, state) => const ClinicChoiceScreen(),
      ),
      GoRoute(
        parentNavigatorKey: routeNavigator,
        name: 'clinic-test',
        path: '/clinic/:nomor',
        builder: (context, state) => ClinicTestScreen(
          nomor: int.tryParse(state.pathParameters["nomor"] ?? "1") ?? 1,
        ),
      ),
    ],
  );
});
