import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/resources/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchTextField extends StatefulWidget {
  SearchTextField({Key? key}) : super(key: key);

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      borderRadius: BorderRadius.circular(30),
      child: TextField(
        controller: _controller,
        autocorrect: false,
        enableSuggestions: false,
        keyboardType: TextInputType.visiblePassword,
        onTap: () {},
        style: TextStyle(fontSize: 20, color: AppColors.blackText),
        toolbarOptions: ToolbarOptions(paste: true),
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
            child: SvgPicture.asset(
              AppIcons.search,
            ),
          ),
          hintText: 'Поиск',
          fillColor: AppColors.background,
          contentPadding: EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 30,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(45),
            borderSide: BorderSide(style: BorderStyle.none),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35),
            borderSide: BorderSide(style: BorderStyle.none),
          ),
        ),
        keyboardAppearance: Brightness.dark,
      ),
    );
  }
}
