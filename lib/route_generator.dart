import 'package:flutter/material.dart';
import 'package:ui_for_shoe_ecommerce_flutter/screens/home/main_home.dart';
import 'package:ui_for_shoe_ecommerce_flutter/screens/login.dart';
import 'package:ui_for_shoe_ecommerce_flutter/screens/product_page.dart';
import 'package:ui_for_shoe_ecommerce_flutter/screens/signup.dart';
import 'package:ui_for_shoe_ecommerce_flutter/screens/splash_screen.dart';

import 'models/product.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args;

    switch (settings.name) {
      case SplashScreen.id:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case LoginScreen.id:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case SignUpScreen.id:
        return MaterialPageRoute(builder: (context) => const SignUpScreen());
      case ProductPage.id:
        args = settings.arguments as Product;
        return MaterialPageRoute(
            builder: (context) => ProductPage(
                  product: args,
                ));

      case UserDashboard.id:
        return MaterialPageRoute(builder: (context) => UserDashboard());

      default:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
    }
  }
}
