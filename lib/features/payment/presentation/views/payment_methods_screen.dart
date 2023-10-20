// ignore_for_file: camel_case_types

import 'package:coffe/core/services/data/database/users.dart';
import 'package:coffe/core/services/theme/text_styles.dart';
import 'package:coffe/features/congrats_screen.dart';
import 'package:coffe/features/payment/presentation/widgets/payment_componant.dart';
import 'package:coffe/features/sign-in-up/presentation/widgets/login_button.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class paymentScreen extends StatefulWidget {
  static const id = "/payment";

  const paymentScreen({Key? key}) : super(key: key);

  @override
  State<paymentScreen> createState() => _paymentScreenState();
}

class _paymentScreenState extends State<paymentScreen> {
  List<bool> isCheckedList = [];
  bool ischecked = true;

  @override
  void initState() {
    isCheckedList = List.generate(currentUser!.name.length, (index) => false);
    checker(0);
    super.initState();
  }

  void checker(int i) {
    isCheckedList = List.generate(currentUser!.name.length, (index) => false);
    isCheckedList[i] = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color(0xffCB8A58),
                  Color(0xff562B1A),
                  Color(
                    0xffCB8A58,
                  )
                ]),
          ),
        ),
        centerTitle: true,
        title: GradientText('Payment',
            style: AppTextStyles.nunitoSansBold20,
            colors: const [Colors.white, Colors.white]),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 300,
              height: 190,
              decoration: const BoxDecoration(
                borderRadius: BorderRadiusDirectional.all(Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage('assets/51-bpd12RZL.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                WidgetCheckBoxpayment(
                  function: (value) {
                    setState(() {
                      ischecked = value;
                    });
                  },
                  isChecker: ischecked,
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: 300,
              height: 160,
              decoration: const BoxDecoration(
                borderRadius: BorderRadiusDirectional.all(Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage('assets/R.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                WidgetCheckBoxpayment(
                  function: (value) {
                    setState(() {
                      ischecked = value;
                    });
                  },
                  isChecker: !ischecked,
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, CongratsScreen.id, (r) => false),
              child: const AppMainButton(
                onPressWithContext: null,
                text: 'pay',
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
