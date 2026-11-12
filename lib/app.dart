import 'package:flutter/material.dart';
import 'core/app_theme.dart';
import 'features/home/presentation/home_screen.dart';
import 'features/profile/profile_screen.dart';
import 'features/showcase/ui_showcase_screen.dart';
import 'features/splash/splash_screen.dart';

class CampusHubApp extends StatelessWidget {
  const CampusHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Campus Hub',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const SplashScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/showcase': (context) => const UiShowcaseScreen(),
      },
    );
  }
}
