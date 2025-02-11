import 'package:flutter/material.dart';
import 'package:greenify_app/core/routes/routes.dart';
import 'package:greenify_app/core/theme/app_color.dart';
import 'package:greenify_app/core/theme/app_text_style.dart';
import 'package:greenify_app/core/theme/font_family_helper.dart';
import 'package:greenify_app/features/login/presentation/screen/widgets/rich_text.dart';

class OtpField extends StatefulWidget {
  const OtpField({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OtpFieldState createState() => _OtpFieldState();
}

class _OtpFieldState extends State<OtpField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _textFieldOTP(first: true, last: false),
            _textFieldOTP(first: false, last: false),
            _textFieldOTP(first: false, last: false),
            _textFieldOTP(first: false, last: true),
          ],
        ),
        richText(context, 'Don\'t receive code?', ' Resend', Routes.logScreen),
      ],
    );
  }

  Widget _textFieldOTP({required bool first, last}) {
    return SizedBox(
      height: 72,
      width: 82,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: Container(
          height: 72,
          width: 82,
          decoration: BoxDecoration(
            color: AppColor.lightGrey,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 2,
                spreadRadius: 1,
                offset: Offset(1, 1),
              ),
            ],
          ),
          child: TextField(
            autofocus: true,
            onChanged: (value) {
              if (value.length == 1 && last == false) {
                FocusScope.of(context).nextFocus();
              }
              if (value.isEmpty && first == false) {
                FocusScope.of(context).previousFocus();
              }
            },
            showCursor: false,
            readOnly: false,
            textAlign: TextAlign.center,
            style: AppTextStyle.font20BlackMedium.copyWith(
                fontSize: 30, fontFamily: FontFamilyHelper.robotoFont),
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColor.lightGrey,
              counter: const Offstage(),
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 0.5, color: AppColor.lightGrey),
                  borderRadius: BorderRadius.circular(15)),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 1, color: AppColor.darkGreen),
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ),
      ),
    );
  }
}
