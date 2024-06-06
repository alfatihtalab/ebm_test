

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // 1600x900 dp
    return Scaffold(
      body: SafeArea(child: Container(
        height: double.infinity,
        width: double.infinity,
        color: size.width < 700? Colors.green: Colors.yellow,
      )),
    );
  }



  _buildLoginWeb(){}
  _buildMobile(){}

}




