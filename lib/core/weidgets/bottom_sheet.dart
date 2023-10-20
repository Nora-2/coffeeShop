// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class bottomsheet extends StatelessWidget
{
  const bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(

      onDragStart: (details) {

      },
      onClosing: () {

    }, builder: (context) => Container(
      color: Colors.white,

    ),);
  }

}