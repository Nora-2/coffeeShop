import 'package:coffe/core/services/constants/colors.dart';
import 'package:coffe/core/services/theme/text_styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  final void Function(BuildContext) onPressWithContext;
  const GetStartedButton({
    super.key,
    required this.onPressWithContext
  });

  @override
  Widget build(BuildContext context) {

    return MaterialButton(
      onPressed: () => onPressWithContext(context),
      color: AppColors.c212121,
      height: 55,
      minWidth: 160,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4)),
      child: Text(
        '',
        textScaleFactor: 1.075,
        style: AppTextStyles.gelasioSemiBold18.copyWith(
          color: AppColors.cFFFFFF,
        ),
      ),
    );
  }
}
