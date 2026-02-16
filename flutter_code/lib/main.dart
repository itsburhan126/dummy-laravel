import 'package:flutter/material.dart';

import 'features/auth/presentation/pages/login_page.dart';
import 'features/auth/presentation/pages/signup_page.dart';
import 'features/auth/presentation/pages/splash_page.dart';
import 'features/auth/presentation/pages/home_page.dart';

void main() {
  runApp(const ShortWebseriesApp());
}

class ShortWebseriesApp extends StatelessWidget {
  const ShortWebseriesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Short Webseries',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Colors.black,
      ),
      initialRoute: SplashPage.routeName,
      routes: {
        SplashPage.routeName: (_) => const SplashPage(),
        LoginPage.routeName: (_) => const LoginPage(),
        SignupPage.routeName: (_) => const SignupPage(),
        HomePage.routeName: (_) => const HomePage(),
      },
    );
  }
}

