import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:group_chat/const.dart';
import 'package:group_chat/feature/presentation/widgets/headerWidget.dart';
import 'package:group_chat/feature/presentation/widgets/textfield_container_widget.dart';
import 'package:group_chat/feature/presentation/widgets/textfield_password_container_widget.dart';
import 'package:group_chat/feature/presentation/widgets/theme/style.dart';

import '../widgets/container_button_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 32),
            child: Column(
              children: [
                HeaderWidget(
                  title: "Login",
                ),
                TextFieldContainerWidget(
                  keyBoardType: TextInputType.emailAddress,
                  controller: _emailController,
                  prefixIcon: Icons.email,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFieldPasswordContainerWidget(
                  keyBoardType: TextInputType.emailAddress,
                  controller: _passwordController,
                  prefixIcon: Icons.lock,
                  suffixIcon: MaterialIcons.remove_red_eye,
                ),
                _forgotPasswordWidget(),
                const SizedBox(
                  height: 10,
                ),
                ContainerButtonWidget(
                  title: 'Login',
                  tonTap: () {
                    print("hello login button");
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                _rowTextWidget(),
                SizedBox(height: 10,),
                _rowGoogleWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _forgotPasswordWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(""),
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, PageConst.forgotPassword);
          },
          child: Text(
            "Forgot Password?",
            style: TextStyle(
                color: greenColor, fontSize: 16, fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }

  Widget _rowTextWidget() {
    return Row(
      children: [
        const Text("Don't have an account?"),
        InkWell(
            onTap: () {},
            child: Text(
              "Register",
              style: TextStyle(color: greenColor),
            ))
      ],
    );
  }

  Widget _rowGoogleWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(50)),
        child: Icon(AntDesign.google),
        ),
      ],
    );
  }
}
