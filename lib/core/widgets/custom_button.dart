import 'package:flutter/material.dart';
import '../../constant.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.title, required this.textRouting, this.height, this.width, required this.loginFunction,

  });
  final String title;
  final String textRouting;
  final double? height;
  final double? width;
  final Function loginFunction;
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: width,
          height: MediaQuery.of(context).size.height * 0.08,
          child: ElevatedButton(

            style:

            ElevatedButton.styleFrom(

                backgroundColor: kPrimartyColorBlue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                ),
            onPressed: () {
              loginFunction();

            },
            child:  Text(title, style: const TextStyle(fontSize: 20)),
          ),
        ),
      );
  }
}
