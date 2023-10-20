
import 'package:coffe/core/cubit_home/homecubit_cubit.dart';
import 'package:coffe/core/services/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomecubitCubit()),
    
      ],
      child:  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'cofee',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      initialRoute: AppRoutes.initialRoute,

      routes: AppRoutes.routes,
    ));
  }
}

