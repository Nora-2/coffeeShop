import 'package:coffe/core/services/constants/colors.dart';
import 'package:coffe/core/services/theme/text_styles.dart';
import 'package:flutter/material.dart';


class AppMainButton extends StatelessWidget {
  final void Function(BuildContext)? onPressWithContext;
  final String text;
  final double marginWidth;
  const AppMainButton({
    super.key,
    required this.onPressWithContext,
    this.marginWidth = 40,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: marginWidth),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
          
               colors: [Color(0xffCB8A58),Color(0xff562B1A)],
              begin: Alignment.bottomLeft,
               end: Alignment.topRight,
          ),),
        child: MaterialButton(
          onPressed: onPressWithContext != null ? () {
            onPressWithContext!(context);
          } : null,
          elevation: 10,
        
          height: 55,
          minWidth: MediaQuery.of(context).size.width,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)),
          child: Text(
            text,
            textScaleFactor: 1.075,
            style: AppTextStyles.nunitoSansSemiBold18.copyWith(
              color: AppColors.cFFFFFF,
            ),
          ),
        ),
      ),
    );
  }
}
