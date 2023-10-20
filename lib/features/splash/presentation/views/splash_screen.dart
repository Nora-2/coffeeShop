import 'package:coffe/features/sign-in-up/presentation/views/sign_up_screen.dart';
import 'package:coffe/features/sign-in-up/presentation/widgets/login_button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
  static String id = 'BoardingScreen';
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _coffeeController;
  bool copAnimated = false;
  bool animateCafeText = false;

  @override
  void initState() {
    super.initState();
    _coffeeController = AnimationController(vsync: this);
    _coffeeController.addListener(() {
      if (_coffeeController.value > 0.7) {
        _coffeeController.stop();
        copAnimated = true;
        setState(() {});
        Future.delayed(const Duration(seconds: 1), () {
          animateCafeText = true;
          setState(() {});
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _coffeeController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      
      body: Container(
        decoration:const BoxDecoration(
        gradient: LinearGradient(colors: [Color(0xffCB8A58),Color(0xff562B1A),Color(0xffCB8A58),],begin: Alignment.topLeft,
            end: Alignment.bottomRight,),
        )  ,              
        child: Stack(
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              height: copAnimated ? screenHeight / 1.9 : screenHeight,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(copAnimated ? 40.0 : 0.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Visibility(
                    visible: !copAnimated,
                    child: Lottie.asset(
                      'assets/coffeesplash.json',
                      controller: _coffeeController,
                      onLoaded: (composition) {
                        _coffeeController
                          ..duration = composition.duration
                          ..forward();
                      },
                    ),
                  ),
                  Visibility(
                    visible: copAnimated,
                    child: Image.asset(
                      'assets/coffeepic2.png',
                      height: 190.0,
                      width: 190.0,
                    ),
                  ),
                  Center(
                    child: AnimatedOpacity(
                      opacity: animateCafeText ? 1 : 0,
                      duration: const Duration(seconds: 1),
                       child:  GradientText('C A F É',style:const TextStyle(fontSize: 50.0,) , colors: const[Color(0xffCB8A58),Color(0xff562B1A),Color(0xffCB8A58,)]),
               
                    
                    ),
                  ),
                ],
              ),
            ),
      
            // Text bottom part
            Visibility(visible: copAnimated, child: const _BottomPart()),
          ],
        ),
      ),
    );
  }
}

class _BottomPart extends StatelessWidget {
  const _BottomPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Find The Best Coffee for You',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 30.0),
            Text(
              'Lorem ipsum dolor sit amet, adipiscing elit. '
              'Nullam pulvinar dolor sed enim eleifend efficitur.',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white.withOpacity(0.8),
                height: 1.5,
              ),
            ),
            const SizedBox(height: 50.0),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, SignUpScreen.id, (r) => false);
                },
                child:  const AppMainButton(
                                onPressWithContext:null ,
                                text: 'Start     ->',
                              ),
            ),),
            const SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}
