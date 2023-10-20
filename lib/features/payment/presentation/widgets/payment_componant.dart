import 'package:coffe/core/services/constants/colors.dart';
import 'package:coffe/core/services/constants/strings.dart';
import 'package:coffe/core/services/theme/text_styles.dart';
import 'package:flutter/material.dart';

Text appBarTextpay() {
  return Text(
    Strings.paymentMethod.text,
    style: const TextStyle(
      color: AppColors.c303030,
    ),
  );
}



class WidgetCheckBoxpayment extends StatefulWidget {
  final bool isChecker;
  final Function function;

  const WidgetCheckBoxpayment({
    required this.function,
    required this.isChecker,
    Key? key,
  }) : super(key: key);

  @override
  State<WidgetCheckBoxpayment> createState() => _WidgetCheckBoxState();
}

class _WidgetCheckBoxState extends State<WidgetCheckBoxpayment> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool isActive = widget.isChecker;

    return GestureDetector(
      onTap: () {
        setState(() {});
      },

      /// #check Box & Shipping Address
      child: Row(
        children: [
          /// #checkBox
          isActive
              ? const Icon(Icons.check_box,color: Colors.brown,)
              : const Icon(
                  Icons.check_box_outline_blank,
                  color: AppColors.c909090,
                ),

          SizedBox(
            width: 15 * width / 375,
          ),

          /// #shippingAddress
          Text(
     "Use as default payment method",
            style: AppTextStyles.nunitoSansRegular16
        .copyWith(color: Colors.brown, fontSize: 14),
          ),
        ],
      ),
    );
  }
}

