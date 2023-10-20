import 'package:coffe/core/controllers/cart_controller.dart';
import 'package:coffe/core/services/theme/text_styles.dart';
import 'package:coffe/features/cart/presentation/widgets/cart_components.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main(List<String> args) {
  runApp(const CartScreen());
}

class CartScreen extends StatefulWidget {
  static const id = "/cart";

  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  late final CartController controller;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

 

  TextEditingController promoCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
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
          title: GradientText('myCart',
              style: AppTextStyles.nunitoSansBold20,
              colors:const [Colors.white, Colors.white]),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      addRepaintBoundaries: false,
                      itemBuilder: (BuildContext context, int index) {
                        return CartItemWidget(
                          counter: 1,
                          textLink: 'minimalStand',
                          controller: controller,
                          index: index,
                        );
                      },
                      itemCount: 9,
                      separatorBuilder: (BuildContext context, int index) {
                        return const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Divider(),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  SizedBox(
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'total',
                            style: AppTextStyles.nunitoSansBold20
                                .copyWith(color: Colors.brown),
                          ),
                          const Text(
                            "\$ 1000",
                            style: AppTextStyles.nunitoSansBold20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
