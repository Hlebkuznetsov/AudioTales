import 'package:audio_tales/blocs/registration/registration_bloc.dart';
import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/services/formatters/phone_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        _controller.selection = TextSelection.fromPosition(
            TextPosition(offset: _controller.text.length));
        _controller.text == '' ? _controller.text = '+380 (' : _controller.text;
      },
      textAlign: TextAlign.center,
      showCursor: true,
      inputFormatters: [
        UAPhoneFormatter(),
        LengthLimitingTextInputFormatter(19),
        FilteringTextInputFormatter.allow(RegExp(r'[0-9 + ()]')),
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
      onChanged: (value) {
        BlocProvider.of<RegistrationBloc>(context)
            .add(PhoneLength(phone: value));
      },
      keyboardType: TextInputType.number,
      keyboardAppearance: Brightness.dark,
    );
  }
}
