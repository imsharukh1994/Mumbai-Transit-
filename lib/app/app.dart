import 'package:flutter/material.dart';
import 'router.dart';
import 'theme.dart';

class MumbaiTransitApp extends StatelessWidget {
  const MumbaiTransitApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Wire the app theme and router once feature modules are ready.
    return MaterialApp.router(
      title: 'Mumbai Transit+',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      routerConfig: appRouter,
    );
  }
}
