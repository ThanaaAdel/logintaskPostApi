import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logintaskpostapi/features/login_view/presentation/manager/login_cubit.dart';
import 'core/utils/app_router.dart';
import 'features/login_view/data/data_source/post_data_api.dart';
import 'features/login_view/presentation/login_view.dart';


void main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
              routerConfig: AppRouter.router,
             debugShowCheckedModeBanner: false,
             theme: ThemeData.dark().copyWith(
               scaffoldBackgroundColor: Colors.white,
               textTheme:
               GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
    ),



    );
  }
}