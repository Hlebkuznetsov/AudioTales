import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/services/formatters/phone_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegistrationTextField extends StatefulWidget {
  RegistrationTextField({Key? key}) : super(key: key);

  @override
  State<RegistrationTextField> createState() => _RegistrationTextFieldState();
}

class _RegistrationTextFieldState extends State<RegistrationTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      onTap: () {
        _controller.text == '' ? _controller.text = '+380 (' : _controller.text;
      },
      textAlign: TextAlign.center,
      showCursor: false,
      inputFormatters: [
        UAPhoneFormatter(),
        LengthLimitingTextInputFormatter(19),
      ],
      style: TextStyle(fontSize: 20, color: AppColors.blackText),
      toolbarOptions: ToolbarOptions(paste: false),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.background,
        contentPadding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 0,
        ),
        labelStyle: TextStyle(fontSize: 20, color: AppColors.blackText),
        labelText: '                                +380',
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
      keyboardType: TextInputType.number,
      keyboardAppearance: Brightness.dark,
    );
  }
}
