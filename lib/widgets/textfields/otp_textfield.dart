import 'package:audio_tales/blocs/registration/registration_bloc.dart';
import 'package:audio_tales/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OTPTextField extends StatefulWidget {
  OTPTextField({Key? key}) : super(key: key);

  @override
  State<OTPTextField> createState() => _OTPTextFieldState();
}

class _OTPTextFieldState extends State<OTPTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      textAlign: TextAlign.center,
      showCursor: true,
      inputFormatters: [
        LengthLimitingTextInputFormatter(6),
        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
      ],
      style: TextStyle(fontSize: 20, color: AppColors.blackText),
      toolbarOptions: ToolbarOptions(paste: true),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.background,
        contentPadding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 0,
        ),
        labelStyle: TextStyle(fontSize: 20, color: AppColors.blackText),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(45),
          borderSide: BorderSide(style: BorderStyle.none),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
          borderSide: BorderSide(style: BorderStyle.none),
        ),
      ),
      onChanged: (value) {
        if (value.length == 6) {
          BlocProvider.of<RegistrationBloc>(context)
              .add(TryCheckOTP(otp: value));
        }
      },
      keyboardType: TextInputType.number,
      keyboardAppearance: Brightness.dark,
    );
  }
}
