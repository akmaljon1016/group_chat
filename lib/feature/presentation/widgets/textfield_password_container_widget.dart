import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:group_chat/feature/presentation/widgets/theme/style.dart';

class TextFieldPasswordContainerWidget extends StatefulWidget {
  final TextEditingController? controller;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final TextInputType? keyBoardType;

  const TextFieldPasswordContainerWidget(
      {Key? key,
      this.controller,
      this.prefixIcon,
      this.suffixIcon,
      this.keyBoardType})
      : super(key: key);

  @override
  State<TextFieldPasswordContainerWidget> createState() =>
      _TextFieldPasswordContainerWidgetState();
}

class _TextFieldPasswordContainerWidgetState
    extends State<TextFieldPasswordContainerWidget> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: color747480.withOpacity(.2),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        keyboardType: widget.keyBoardType,
        controller: widget.controller,
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(widget.prefixIcon),
            suffixIcon: InkWell(
                onTap: (){
                  setState(() {
                    isObscureText=!isObscureText;
                  });
                },
                child: Icon(isObscureText==true?MaterialIcons.panorama_fish_eye:MaterialIcons.remove_red_eye))),
      ),
    );
  }
}
