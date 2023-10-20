import 'package:coffe/core/controllers/sign_up_controller.dart';
import 'package:coffe/core/services/app_routes.dart';
// import 'package:coffe/core/services/app_routes.dart';
import 'package:coffe/core/services/constants/colors.dart';
import 'package:coffe/core/services/theme/text_styles.dart';
import 'package:coffe/core/weidgets/custom_text_field.dart';
import 'package:coffe/features/sign-in-up/presentation/widgets/login_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  static const id = "/signUp";

  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late final SignUpController controller;

  @override
  void initState() {
    super.initState();
    controller = SignUpController(updater: setState);
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
                    const  SizedBox(
                        height: 100,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(top:50, left: 20,right: 50),
                          child: Text(
                            'Creat New Account',
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
                        decoration: const BoxDecoration(
                          color: AppColors.cFFFFFF,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              /// Input: Name
                              const SizedBox(height: 35),
                              Padding(
                                padding: const EdgeInsets.only(left: 30,right: 30),
                                child: CustomTextField(
                                  controller: controller.nameController,
                                  labelText: 'Name',
                                  isObscure: false,
                                  wordTextCapitalization: true,
                                ),
                              ),

                              /// Input: Email
                              const SizedBox(height: 35),
                              Padding(
                                padding: const EdgeInsets.only(left: 30,right: 30),
                                child: CustomTextField(
                                  controller: controller.emailController,
                                  labelText: 'Email',
                                  isObscure: false,
                                ),
                              ),

                              /// Input: Password
                              const SizedBox(height: 35),
                              Padding(
                                padding: const EdgeInsets.only(left: 30,right: 30),
                                child: CustomTextField(
                                  controller: controller.passwordController,
                                  labelText: 'password',
                                  isObscure: true,
                                ),
                              ),

                              /// Input: Confirm password
                              const SizedBox(height: 35),
                              Padding(
                                padding: const EdgeInsets.only(left: 30,right: 30),
                                child: CustomTextField(
                                  controller: controller.rePasswordController,
                                  labelText: 'confirmPassword',
                                  isObscure: true,
                                ),
                              ),

                              /// Button: Sign up
                              const SizedBox(height: 50),
                              AppMainButton(
                                onPressWithContext: controller.signUp,
                                text: 'Register',
                              ),

                              /// Text: All ready have account
                              const SizedBox(height: 30),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'alreadyHaveAccount..?',
                                    style: AppTextStyles.nunitoSansSemiBold14
                                        .copyWith(
                                      color: AppColors.c808080,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  GestureDetector(
                                     onTap: () => AppRoutes.pushReplaceSignIn(context),
                                    child: const Text(
                                      'Login',
                                      style: AppTextStyles.nunitoSansBold14,
                                    ),
                                  ),
                                ],
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
