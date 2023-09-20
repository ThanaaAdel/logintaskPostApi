import 'package:flutter/material.dart';
import 'package:logintaskpostapi/features/login_view/presentation/widgets/login_screen_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginViewBody(),
    );
  }
}
