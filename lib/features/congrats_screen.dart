import 'package:coffe/core/homelayout.dart';
import 'package:coffe/core/services/theme/text_styles.dart';
import 'package:coffe/features/sign-in-up/presentation/widgets/login_button.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CongratsScreen extends StatelessWidget {
  static const id = "/congrats";

  const CongratsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 7,
            ),
            GradientText('success',
              style: AppTextStyles.merriWeatherBold36.copyWith(fontSize: 60),
              colors:const [Color(0xffCB8A58),Color(0xff562B1A),Color(0xffCB8A58),]),
        
           
            const Spacer(
              flex: 2,
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  children: [
                    Container(
                      width: 300,
                      height: 260,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/OIP.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                
              ],
            ),
            const Spacer(
              flex: 2,
            ),
            Text(
              'yourOrderWillArriveSoon',
              style: AppTextStyles.nunitoSansRegular18.copyWith(
                color: Colors.brown,
                height: 2,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, HomeLayout.id);
                },
                child: const AppMainButton(
                  onPressWithContext: null,
                  text: 'trackYourOrder',
                )),
            const Spacer(
              flex: 1,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, HomeLayout.id);
                },
                child: const AppMainButton(
                  onPressWithContext: null,
                  text: 'backToHome',
                )),
            const Spacer(
              flex: 6,
            ),
          ],
        ),
      ),
    );
  }
}
