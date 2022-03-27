import 'package:audio_tales/resources/colors.dart';
import 'package:flutter/material.dart';

class DescriptionTextField extends StatefulWidget {
  DescriptionTextField({
    Key? key,
  }) : super(key: key);

  @override
  State<DescriptionTextField> createState() => _DescriptionTextFieldState();
}

class _DescriptionTextFieldState extends State<DescriptionTextField> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 40,
        child: TextField(
          controller: _controller,
          enableSuggestions: false,
          autocorrect: false,
          keyboardType: TextInputType.name,
          onChanged: (nameValue) {},
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14),
          toolbarOptions: ToolbarOptions(copy: true),
          decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: AppColors.blackText.withOpacity(0.2)),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: AppColors.blackText.withOpacity(0.2)),
              ),
              // hintText: '',
              hintStyle: TextStyle(color: AppColors.blackText),
              contentPadding: EdgeInsets.symmetric(horizontal: 20)),
          keyboardAppearance: Brightness.dark,
        ),
      ),
    );
  }
}
