import 'package:coffe/core/services/theme/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final bool isObscure;
  final TextEditingController? controller;
  final bool wordTextCapitalization;

  const CustomTextField({
    super.key,
    required this.labelText,
    required this.isObscure,
    this.controller,
    this.wordTextCapitalization = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscure = false;
  @override
  void initState() {
    super.initState();
    obscure = widget.isObscure;
  }

  @override
  Widget build(BuildContext context) {
    const eye = CupertinoIcons.eye;
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        
        floatingLabelAlignment: FloatingLabelAlignment.start,
        floatingLabelStyle: AppTextStyles.nunitoSansLight14.copyWith(color: Colors.black),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        labelText: widget.labelText,
        suffixIcon: widget.isObscure
            ? GestureDetector(
          onTap: () {
            setState(() {
              eye == CupertinoIcons.eye
                  ? CupertinoIcons.eye
                  : CupertinoIcons.eye_slash;
              obscure = !obscure;
            });
          },
          child: Icon(
            obscure
                ? CupertinoIcons.eye_slash
                : CupertinoIcons.eye,
            color: Colors.black,
          ),
        )
            : null,
        labelStyle: AppTextStyles.nunitoSansRegular14.copyWith(
          color: Colors.black
        ),
        focusedBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide:const BorderSide(color: Color(0xffD2AE82), width: 2),
        ),
        enabledBorder:  OutlineInputBorder(
           borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color:  Color(0xffD2AE82), width: 2),
        ),
      ),
      obscureText: obscure,
      textCapitalization: widget.wordTextCapitalization ? TextCapitalization.words : TextCapitalization.none,
      textInputAction: TextInputAction.next,
      cursorColor:  const Color(0xffD2AE82),
      style: AppTextStyles.nunitoSansRegular18.copyWith(
          decoration: TextDecoration.none
      ),
    );
  }
}