import 'package:flutter/material.dart';
import 'package:group_chat/feature/presentation/pages/login_page.dart';
import 'package:group_chat/on_generate_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Group chat",
      theme: ThemeData(primarySwatch: Colors.green),
      onGenerateRoute: OnGenerateRoute.route,
      // initialRoute: "/",
      // routes: {
      //   "/": (context) {
      //     return LoginPage();
      //   }
      // },
    );
  }
}
