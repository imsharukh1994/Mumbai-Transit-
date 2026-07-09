import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'routes.dart';
import '../features/splash/presentation/splash_page.dart';
import '../features/onboarding/presentation/onboarding_page.dart';
import '../features/auth/presentation/auth_page.dart';
import '../features/home/presentation/home_page.dart';
import '../features/map/presentation/map_page.dart';
import '../features/weather/presentation/weather_page.dart';
import '../features/trains/presentation/trains_page.dart';
import '../features/metro/presentation/metro_page.dart';
import '../features/traffic/presentation/traffic_page.dart';
import '../features/reports/presentation/reports_page.dart';
import '../features/alerts/presentation/alerts_page.dart';
import '../features/planner/presentation/planner_page.dart';
import '../features/profile/presentation/profile_page.dart';
import '../features/settings/presentation/settings_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.splash,
  routes: <GoRoute>[
    GoRoute(
      path: AppRoutes.splash,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: AppRoutes.onboarding,
      builder: (context, state) => const OnboardingPage(),
    ),
    GoRoute(
      path: AppRoutes.auth,
      builder: (context, state) => const AuthPage(),
    ),
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/map',
      builder: (context, state) => const MapPage(),
    ),
    GoRoute(
      path: '/weather',
      builder: (context, state) => const WeatherPage(),
    ),
    GoRoute(
      path: '/trains',
      builder: (context, state) => const TrainsPage(),
    ),
    GoRoute(
      path: '/metro',
      builder: (context, state) => const MetroPage(),
    ),
    GoRoute(
      path: '/traffic',
      builder: (context, state) => const TrafficPage(),
    ),
    GoRoute(
      path: '/reports',
      builder: (context, state) => const ReportsPage(),
    ),
    GoRoute(
      path: '/alerts',
      builder: (context, state) => const AlertsPage(),
    ),
    GoRoute(
      path: '/planner',
      builder: (context, state) => const PlannerPage(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfilePage(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsPage(),
    ),
  ],
);
