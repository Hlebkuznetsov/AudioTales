import 'package:audio_tales/resources/colors.dart';
import 'package:flutter/material.dart';

class ProfileTextField extends StatefulWidget {
  ProfileTextField({Key? key}) : super(key: key);

  @override
  State<ProfileTextField> createState() => _ProfileTextFieldState();
}

class _ProfileTextFieldState extends State<ProfileTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      readOnly: true,
      style: TextStyle(fontSize: 20),
      toolbarOptions: ToolbarOptions(paste: true),
      decoration: InputDecoration(
        hintText: '+380 (95) 943 25 76',
        hintStyle: TextStyle(color: AppColors.blackText),
        contentPadding: EdgeInsets.symmetric(
          vertical: 17,
          horizontal: 30,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
          borderSide: BorderSide(style: BorderStyle.none),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
          borderSide: BorderSide(style: BorderStyle.none),
        ),
      ),
      keyboardAppearance: Brightness.dark,
    );
  }
}
