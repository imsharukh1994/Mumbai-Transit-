import 'package:go_router/go_router.dart';
import 'routes.dart';

// TODO: Add route implementations once feature screens are created.
final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.splash,
  routes: <GoRoute>[
    GoRoute(
      path: AppRoutes.splash,
      builder: (context, state) {
        return const SizedBox.shrink();
      },
    ),
  ],
);
