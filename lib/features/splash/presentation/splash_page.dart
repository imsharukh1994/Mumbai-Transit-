import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';

/// Splash page placeholder for Mumbai Transit+.
///
/// This page is the initial app entry point and will be replaced
/// with the real startup flow once onboarding and authentication
/// are implemented.
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Text(
          'Mumbai Transit+',
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
        ),
      ),
    );
  }
}
