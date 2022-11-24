import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_chat/feature/presentation/widgets/theme/style.dart';

class ContainerButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback? tonTap;

  const ContainerButtonWidget({Key? key, required this.title, this.tonTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:tonTap,
      child: Container(
        alignment: Alignment.center,
        height: 44,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: greenColor, borderRadius: BorderRadius.circular(10)),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: textIconColor),
        ),
      ),
    );
  }
}
