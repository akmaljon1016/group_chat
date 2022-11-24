import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_chat/feature/presentation/widgets/headerWidget.dart';
import 'package:group_chat/feature/presentation/widgets/textfield_container_widget.dart';

import '../../../const.dart';

class ForgotPassworPage extends StatefulWidget {
  const ForgotPassworPage({Key? key}) : super(key: key);

  @override
  State<ForgotPassworPage> createState() => _ForgotPassworPageState();
}

class _ForgotPassworPageState extends State<ForgotPassworPage> {
  TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 32),
          child: Column(
            children: [
              HeaderWidget(title: "Forgot Password"),
              SizedBox(
                height: 20,
              ),
              Text(
                  "Don't worry! Just fill in your email and ${AppConst.appName} will send you a link to rest your password."),
              SizedBox(height: 10,),
              TextFieldContainerWidget(
                controller: _emailController,
                prefixIcon: Icons.email,
                keyBoardType: TextInputType.emailAddress,
              )
            ],
          ),
        ),
      ),
    );
  }
}
