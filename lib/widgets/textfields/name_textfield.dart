import 'package:audio_tales/resources/colors.dart';
import 'package:flutter/material.dart';

class NameTextField extends StatefulWidget {
  NameTextField({Key? key}) : super(key: key);

  @override
  State<NameTextField> createState() => _NameTextFieldState();
}

class _NameTextFieldState extends State<NameTextField> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      keyboardType: TextInputType.name,
      onChanged: (nameValue) {},
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 20),
      toolbarOptions: ToolbarOptions(paste: true, copy: true),
      decoration: InputDecoration(
        hintText: 'Имя',
        hintStyle: TextStyle(color: AppColors.blackText),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
      ),
      keyboardAppearance: Brightness.dark,
    );
  }
}
