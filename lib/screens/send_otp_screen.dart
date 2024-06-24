import 'package:flutter/material.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/constants/colors.dart';
import 'package:watch_store/constants/strings.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/widgets/app_text_field.dart';

import '../constants/dimens.dart';

class SendOtpScreen extends StatelessWidget {
  SendOtpScreen({
    super.key,
  });

  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.png.mainLogo.path),
            AppDimens.large.height,
            AppTextField(
              controller: _controller,
              lable: AppStrings.enterYourNumber,
              hint: AppStrings.hintPhoneNumber,
            ),
            AppDimens.large.height,
            AppTextField(
              controller: _controller,
              lable: AppStrings.enterYourNumber,
              hint: AppStrings.hintPhoneNumber,
            )
          ],
        ),
      )),
    );
  }
}
