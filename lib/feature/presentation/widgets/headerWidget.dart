
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_chat/feature/presentation/widgets/theme/style.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  const HeaderWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "Login",
            style: TextStyle(
                fontSize: 35,
                color: greenColor,
                fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(height: 10,),
        const Divider(thickness: 1,),
        const SizedBox(height: 10,)
      ],
    );
  }
}
