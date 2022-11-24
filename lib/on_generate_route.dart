import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_chat/const.dart';
import 'package:group_chat/feature/presentation/pages/forgot_password_page.dart';
import 'package:group_chat/feature/presentation/pages/login_page.dart';

class OnGenerateRoute {
  static Route<dynamic> route(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case PageConst.forgotPassword:
        {
          return materialBuilder(widget: ForgotPassworPage());
        }
      case "/":
        {
          return materialBuilder(widget: LoginPage());
        }
      default:
        return materialBuilder(widget: ErrorPage());
    }
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("error"),
      ),
    );
  }
}

MaterialPageRoute materialBuilder({required Widget widget}) {
  return MaterialPageRoute(builder: (_) => widget);
}
