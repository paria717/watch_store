import 'package:flutter/material.dart';
import 'package:watch_store/components/extention.dart';

import '../constants/colors.dart';
import '../constants/dimens.dart';
import '../constants/strings.dart';

class AppTextField extends StatelessWidget {
  AppTextField(
      {super.key,
      required this.lable,
      required this.hint,
      this.textAlign = TextAlign.center,
      required this.controller,
      this.inputType, this.icon =const SizedBox()});
  final String lable;
  final String hint;
  final TextAlign textAlign;
  final TextEditingController controller;
   TextInputType? inputType;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimens.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(lable),
          AppDimens.medium.height,
          TextField(
              controller: controller,
              textAlign: textAlign,
              keyboardType: inputType,
              decoration: InputDecoration(
                hintText: hint,
                prefixIcon: icon,
               
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ))
        ],
      ),
    );
  }
}
