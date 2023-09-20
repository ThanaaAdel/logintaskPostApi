import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logintaskpostapi/features/login_view/presentation/widgets/show_data.dart';
import '../../../../constant.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_login_text_field.dart';
import '../manager/login_cubit.dart';

class LoginViewForm extends StatefulWidget {
  const LoginViewForm({super.key});
  @override
  State<LoginViewForm> createState() => _LoginViewFormState();
}

class _LoginViewFormState extends State<LoginViewForm> {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              const Text(
                'تسجيل الدخول',
                style: TextStyle(
                    color: kPrimartyColorBlue,
                    fontSize: 17,
                    fontWeight: FontWeight.w700),
              ),
              CustomLoginTextField(
                  textEditingController: emailController,
                  iconsuffix: const Icon(
                    Icons.add_card,
                    color: kLightGrayColor4,
                  ),
                  textInputType: TextInputType.text,
                  obscureText: false,
                  stringInTextField: 'رقم الهوية '),
              CustomLoginTextField(
                  textEditingController: passController,
                  iconsuffix: const Icon(
                    Icons.lock,
                    color: kLightGrayColor4,
                  ),
                  textInputType: TextInputType.visiblePassword,
                  obscureText: false,
                  stringInTextField: 'كلمة المرور '),
              BlocListener<LoginCubit, LoginState>(
                listener: (context, state) {
                  if (state is FeaturedRepositoryFailure) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("error"),
                    ));
                  } else if (state is FeaturedRepositorySuccess) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShowData(
                            name: state.dataInfo.employee!,
                            phoneNumber: state.dataInfo.phoneNumber!,
                            mosma_wazefy_name: state.dataInfo.mosmaWazefyName!,
                            id: state.dataInfo.empId!,
                            emp_code: state.dataInfo.empCode!,
                            emp_img: state.dataInfo.empImg!,
                          ),
                        ));
                  } else {
                    const CircularProgressIndicator();
                  }
                },
                child: CustomButton(
                  title: 'تسجيل الدخول',
                  textRouting: '',
                  width: MediaQuery.of(context).size.height * 0.2,
                  loginFunction: () {
                    BlocProvider.of<LoginCubit>(context).getAllData(
                      card_num: emailController.text,
                      user_pass: passController.text,
                    );
                  },
                ),
              ),
              Row(
                children: const [
                  Text(
                    'تخطي',
                    style: TextStyle(
                      fontSize: 20,
                      color: kPrimartyColorBlue,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
