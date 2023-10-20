import 'package:coffe/core/controllers/sign_in_controller.dart';
import 'package:coffe/core/services/app_routes.dart';
import 'package:flutter/material.dart';
// import 'package:coffe/core/services/app_routes.dart';
import 'package:coffe/core/services/constants/colors.dart';
import 'package:coffe/core/services/theme/text_styles.dart';
import 'package:coffe/core/weidgets/custom_text_field.dart';
import 'package:coffe/features/sign-in-up/presentation/widgets/login_button.dart';

class SignInScreen extends StatefulWidget {
  static const id = "/signIn";

  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late final SignInController controller;

  @override
  void initState() {
    super.initState();
    controller = SignInController(updater: setState);
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SafeArea(
            top: false,
            minimum: const EdgeInsets.only(top: 3, bottom: 5),
            child: Container(
              width: double.infinity,
              height: 900,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/iPhone 8 Plus - 15.png')),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 200,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 27, left: 25,right: 50),
                        child: Text(
                          'Welcome back!',
                          style: AppTextStyles.gelasioBold30.copyWith(
                            color: AppColors.c303030,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Container(
                      alignment: Alignment.center,
                      decoration:const BoxDecoration(
                        color: AppColors.cFFFFFF,
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            /// Input: Email
                            const SizedBox(height: 35),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, right: 30),
                              child: CustomTextField(
                                controller: controller.emailController,
                                labelText: 'Email',
                                isObscure: false,
                              ),
                            ),
                            const SizedBox(height: 35),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, right: 30),
                              child: CustomTextField(
                                controller: controller.passwordController,
                                labelText: 'password',
                                isObscure: true,
                              ),
                            ),
                            const SizedBox(height: 40),
                            Builder(builder: (context) {
                              return AppMainButton(
                                onPressWithContext: controller.signIn,
                                text: 'LogIn',
                              );
                            }),
                            const SizedBox(height: 30),
                            GestureDetector(
                              onTap: () =>
                                  AppRoutes.pushReplaceSignUp(context),
                              child:const Text(
                                'New User?...Register Now.',
                                style: AppTextStyles.gelasioRegular18,
                              ),
                            ),
                            const SizedBox(height: 40),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          if (controller.isLoading)
            const Center(
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            ),
        ],
      ),
    );
  }
}
