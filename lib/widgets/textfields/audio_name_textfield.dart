import 'package:audio_tales/resources/colors.dart';
import 'package:flutter/material.dart';

class AudioNameTextField extends StatefulWidget {
  AudioNameTextField({
    Key? key,
    required this.readOnly,
  }) : super(key: key);

  final bool readOnly;

  @override
  State<AudioNameTextField> createState() => _AudioNameTextFieldState();
}

class _AudioNameTextFieldState extends State<AudioNameTextField> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: SizedBox(
        height: 40,
        child: TextField(
          readOnly: widget.readOnly,
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
                borderSide: BorderSide(
                    color: widget.readOnly
                        ? Colors.transparent
                        : AppColors.blackText.withOpacity(0.5)),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: widget.readOnly
                        ? Colors.transparent
                        : AppColors.blackText.withOpacity(0.5)),
              ),
              hintText: 'Название аудиозаписи',
              hintStyle: TextStyle(color: AppColors.blackText),
              contentPadding: EdgeInsets.symmetric(horizontal: 20)),
          keyboardAppearance: Brightness.dark,
        ),
      ),
    );
  }
}
