import 'package:audio_tales/resources/colors.dart';
import 'package:flutter/material.dart';

class CategoryDescriptionTextFiled extends StatelessWidget {
  const CategoryDescriptionTextFiled({
    Key? key,
  }) : super(key: key);

  final String templateText =
      'Сказка о маленьком принце. Он родился в старой деревне и задавался всего-лишь одним вопросом - “Кто я такой?”.Он познакомился со старенькой б в город. Его давняя мечта увидеть принца Алифея исполнилась.';

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();

    return TextField(
      controller: _controller,
      maxLines: 6,
      cursorColor: AppColors.blackText,
      textInputAction: TextInputAction.done,
      style: TextStyle(color: AppColors.blackText, fontSize: 13),
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(style: BorderStyle.none),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(style: BorderStyle.none),
          ),
          hintText: templateText,
          hintStyle: TextStyle(color: AppColors.blackText, fontSize: 13),
          contentPadding: EdgeInsets.zero),
      onTap: () {
        _controller.text == ''
            ? _controller.text = templateText
            : _controller.text;

        _controller.selection = TextSelection.fromPosition(
            TextPosition(offset: _controller.text.length));
      },
    );
  }
}
