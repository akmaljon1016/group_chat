import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_chat/feature/presentation/widgets/theme/style.dart';

class TextFieldContainerWidget extends StatelessWidget {
  final TextEditingController? controller;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final TextInputType? keyBoardType;

  const TextFieldContainerWidget(
      {Key? key,
      this.controller,
      this.prefixIcon,
      this.suffixIcon,
      this.keyBoardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: color747480.withOpacity(.2),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        keyboardType: keyBoardType,
        controller: controller,
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(prefixIcon),
            suffixIcon: Icon(suffixIcon)),
      ),
    );
  }
}
