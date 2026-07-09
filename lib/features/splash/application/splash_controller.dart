import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A simple controller for the splash flow.
///
/// This service is intentionally lightweight and only handles the startup
/// delay before navigating to the next app screen.
final splashControllerProvider = Provider<SplashController>((ref) {
  return SplashController();
});

class SplashController {
  SplashController();

  Future<void> loadInitialData() async {
    // TODO: Replace this delay with real startup tasks such as config loading,
    // authentication checks, or onboarding state resolution.
    await Future.delayed(const Duration(milliseconds: 1800));
  }
}
