import 'package:flutter/material.dart';
import 'package:logintaskpostapi/core/utils/gaps.dart';
import '../../../../constant.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/styles.dart';
import 'clipping_color.dart';
import 'login_screen_form.dart';
class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});


  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}
class _LoginViewBodyState extends State<LoginViewBody> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColorWhite,
      body: SingleChildScrollView(
          child: Stack(
        alignment: Alignment.topCenter,
        children: [
          ClipPath(
            clipper: CurveClipper(),
            child: Container(
              color: kPrimartyColorBlue,

               height: MediaQuery.of(context).size.height * 0.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Column(
              children: [
                Column(
                  children: [
                    Image.asset(AssetsData.logo, height: 50, width: 300),
                    Text(
                      'جمعية قمم الشبابية',
                      style: Styles.textStyle30
                          .copyWith(color: kPrimaryColorWhite),
                    ),
                    Text(
                      'Qimam Association For Youth',
                      style: Styles.textStyle18
                          .copyWith(color: kPrimaryColorWhite),
                    )
                  ],
                ),
                Gaps.vGap20,
                Container(

                  decoration: BoxDecoration(
                      color: kPrimaryColorWhite,
                      borderRadius: BorderRadiusDirectional.circular(22)),
                  child: const LoginViewForm(),

                )
              ],
            ),
          ),
        ],
      )),
    );
  }

}

