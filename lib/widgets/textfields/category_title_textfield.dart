import 'package:audio_tales/resources/colors.dart';
import 'package:flutter/material.dart';

class CategoryTitleTextFiled extends StatelessWidget {
  const CategoryTitleTextFiled({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();

    return TextField(
      cursorColor: AppColors.whiteText,
      controller: _controller,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(style: BorderStyle.none),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(style: BorderStyle.none),
          ),
          hintText: 'Сказка о малыше Кокки',
          hintStyle: TextStyle(color: AppColors.whiteText),
          contentPadding: EdgeInsets.zero),
      style: TextStyle(
          fontSize: 20,
          color: AppColors.background,
          fontWeight: FontWeight.w500),
      onTap: () {
        _controller.text == ''
            ? _controller.text = 'Сказка о малыше Кокки'
            : _controller.text;

        _controller.selection = TextSelection.fromPosition(
            TextPosition(offset: _controller.text.length));
      },
    );
  }
}
