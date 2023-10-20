import 'package:coffe/core/controllers/cart_controller.dart';
import 'package:coffe/core/services/constants/colors.dart';
import 'package:coffe/core/services/constants/strings.dart';
import 'package:coffe/core/services/theme/text_styles.dart';
import 'package:coffe/res/resorces_list.dart';
import 'package:flutter/material.dart';

class CartItemWidget extends StatefulWidget {
  final String textLink;
  final int index;
  final CartController controller;
  final int counter;
  const CartItemWidget({
    super.key,
    required this.counter,
    required this.textLink,
    required this.index,
    required this.controller,
  });

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  var counter = 1;
  int price = 100;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: images[widget.index],
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          SizedBox(
            width: 130,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  names[widget.index],
                  style: AppTextStyles.nunitoSansBold14
                      .copyWith(color: AppColors.c606060),
                ),
                const Spacer(flex: 1),
                SizedBox(
                  width: 130,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => setState(() {
                          counter++;
                        }),
                        child: const ComponentButtonPlusMinus(icon: Icon(Icons.add)),
                      ),
                      Text(
                        "$counter".padLeft(2, "0"),
                        style: AppTextStyles.nunitoSansBold18,
                      ),
                      GestureDetector(
                        onTap: () => setState(() {
                          counter--;
                        }),
                        child:
                           const ComponentButtonPlusMinus(icon: Icon(Icons.remove)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Spacer(flex: 4),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () => widget.controller
                    .buttomCardItemDelate(widget.index, context),
                child: const Icon(Icons.cancel_rounded),
              ),
              const Spacer(flex: 1),
              Text(
                "\$ ${price * counter}",
                style: AppTextStyles.nunitoSansBold16
                    .copyWith(color: AppColors.c303030),
              )
            ],
          )
        ],
      ),
    );
  }
}

class TotalSumm extends StatelessWidget {
  final CartController controller;

  const TotalSumm({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    // AppLocalizations l10n = AppLocalizations.of(context);
    return SizedBox(
      height: 30,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Text(
              Strings.total.text,
              style:
                  AppTextStyles.nunitoSansBold20.copyWith(color: Colors.black),
            ),
            const Spacer(
              flex: 1,
            ),
         const   Text(
              "\$ 1000",
              style: AppTextStyles.nunitoSansBold20,
            ),
          ],
        ),
      ),
    );
  }
}

class ComponentButtonPlusMinus extends StatelessWidget {
  final Icon icon;

  const ComponentButtonPlusMinus({required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 30,
      child: DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: AppColors.cE0E0E0),
        child: Transform.scale(scale: 0.6, child: icon),
      ),
    );
  }
}
