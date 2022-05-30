import 'package:flutter/material.dart';
import 'package:tools/screens/date_screen.dart';
import 'package:tools/screens/main_screen.dart';
import 'package:tools/screens/userAuth/confirm_account.dart';
import 'package:tools/screens/userAuth/confirm_success.dart';
import 'package:tools/screens/userAuth/login_screen.dart';
import 'package:tools/screens/userAuth/password_register_screen.dart';
import 'package:tools/screens/userAuth/register_screen.dart';
import 'package:tools/screens/splash_screen.dart';
import 'package:tools/screens/userAuth/user_login_screen.dart';
import 'package:tools/screens/welcome_screen.dart';
import 'package:tools/screens/product_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash_screen',
      routes: {
        '/splash_screen': (context) => const SplashScreen(),
        '/welcome_screen': (context) => const WelcomeScreen(),
        '/user_login_screen': (context) => const UserLoginScreen(),
        '/login_screen': (context) => LoginScreen(),
        '/register_screen': (context) => RegisterScreen(),
        '/password_register_screen': (context) =>
            const PasswordRegisterScreen(),
        '/confirm_account': (context) => const ConfirmAccount(),
        '/confirm_success': (context) => const ConfirmSuccess(),
        '/main_screen': (context) => const MainScreen(),
        '/product_details': (context) => const ProductDetails(),
        '/date_screen': (context) => const DateScreen(),
      },
    );
  }
}
