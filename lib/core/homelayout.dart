import 'package:coffe/core/cubit_home/homecubit_cubit.dart';
import 'package:coffe/core/custom_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);
 static String id = 'HomeLayout';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomecubitCubit(),
      child: BlocConsumer<HomecubitCubit, HomecubitState>(
        builder: (context, state) => Scaffold(
          backgroundColor: Colors.white,
         
          
          body: HomecubitCubit.get(context)
              .Screens[HomecubitCubit.get(context).indexBottomNavBar],
          
              
          bottomNavigationBar: const CustomBottomNavBar()
        ),
        listener: (context, state) {},
      ),
    );
  }
}
