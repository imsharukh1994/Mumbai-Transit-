import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../app/routes.dart';
import '../domain/onboarding_slide.dart';

final onboardingControllerProvider = StateNotifierProvider<OnboardingController, int>(
  (ref) => OnboardingController(),
);

final onboardingSlidesProvider = Provider<List<OnboardingSlide>>(
  (ref) => const <OnboardingSlide>[
    OnboardingSlide(
      title: 'Real-time Mumbai updates',
      subtitle: 'Weather, trains, traffic and flood alerts in one app.',
      iconAsset: 'assets/icons/onboarding_1.png',
    ),
    OnboardingSlide(
      title: 'Smart route planner',
      subtitle: 'Choose safest and fastest routes across the city.',
      iconAsset: 'assets/icons/onboarding_2.png',
    ),
    OnboardingSlide(
      title: 'Community reports',
      subtitle: 'Report incidents and help other commuters stay safe.',
      iconAsset: 'assets/icons/onboarding_3.png',
    ),
  ],
);

class OnboardingController extends StateNotifier<int> {
  OnboardingController() : super(0);

  void nextPage(int pageCount) {
    if (state < pageCount - 1) {
      state++;
    }
  }

  void previousPage() {
    if (state > 0) {
      state--;
    }
  }

  void setPage(int index) {
    state = index;
  }

  void finish(BuildContext context) {
    context.go(AppRoutes.auth);
  }
}
