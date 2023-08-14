import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nepal_app/cubit/appCubit.dart';
import 'package:nepal_app/cubit/appCubitStates.dart';
import 'package:nepal_app/pages/welcomepages.dart';

class AppCubitlogics extends StatefulWidget {
  const AppCubitlogics({super.key});

  @override
  State<AppCubitlogics> createState() => _AppCubitlogicsState();
}

class _AppCubitlogicsState extends State<AppCubitlogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(builder: (context, state) {
        if (state is WelcomeState) {
          return WelcomePages();
        } else {
          return Container(
           
          );
        }
      }),
    );
  }
}
