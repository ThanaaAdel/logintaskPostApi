import 'package:flutter/material.dart';
import 'login_screen_form.dart';
class LoginListView extends StatelessWidget {
  const LoginListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: ListView.builder(
          physics:  const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return   const Padding(
              padding:  EdgeInsets.all(8.0),
              child: LoginViewForm(
              ),
            );
          }),
    );
  }
}
