import 'package:coffe/core/homelayout.dart';
import 'package:coffe/features/congrats_screen.dart';
import 'package:coffe/features/home/presentation/views/home.dart';
import 'package:coffe/features/payment/presentation/views/payment_methods_screen.dart';
import 'package:coffe/features/profile/presentation/views/profile_screen.dart';
import 'package:coffe/features/sign-in-up/presentation/views/sign_up_screen.dart';
import 'package:coffe/features/sign-in-up/presentation/views/sing_in_screen.dart';
import 'package:coffe/features/splash/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';

bool isAuth = false;

class AppRoutes {
  AppRoutes._();

  static String? get initialRoute {
    if (!isAuth) {
      return SplashScreen.id;
    } else {
      return HomeLayout.id;
    }
  }

  static final routes = {
    HomeLayout.id: (context) => const HomeLayout(),
    SplashScreen.id: (context) => const SplashScreen(),
    SignInScreen.id: (context) => const SignInScreen(),
    SignUpScreen.id: (context) => const SignUpScreen(),
    HomePage.id: (context) => const HomePage(),
    ProfileScreen.id: (context) => const ProfileScreen(),
    paymentScreen.id:(context)=>const paymentScreen(),
    CongratsScreen.id:(context)=>const CongratsScreen(),
  };

  static void pushReplaceSignIn(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, SignInScreen.id, (r) => false);

    // Navigator.pushReplacementNamed(context, SignInScreen.id);
  }

  static void pushReplaceSignUp(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, SignUpScreen.id, (r) => false);

    Navigator.of(context).pushReplacementNamed(SignUpScreen.id);
  }

  static void pushReplaceHome(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, HomeLayout.id, (r) => false);

    // Navigator.of(context).pushReplacementNamed(HomeLayout.id);
  }

//   static void pushCart(BuildContext context) {
//     Navigator.of(context).pushNamed(CartScreen.id);
//   }

//   static void pushProduct(BuildContext context, Product product) {
//     Navigator.of(context).pushNamed(ProductScreen.id, arguments: product);
//   }

//   static void pushAddressUpdate(BuildContext context, int item) {
//     Navigator.of(context).pushNamed(AddressUpdater.id, arguments: item);
//   }
}
