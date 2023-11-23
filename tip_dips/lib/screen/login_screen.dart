import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String errMsg = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF035C48),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      'Tip Dips',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Icon(
                      CupertinoIcons.money_dollar_circle_fill,
                      size: 100,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFieldWidget(
                      hintText: 'E-mail을 입력하세요',
                      maxLine: 1,
                      txtController: _emailController,
                      icon: Icon(Icons.email_rounded),
                    ),
                    TextFieldWidget(
                      hintText: 'Password를 입력하세요',
                      maxLine: 1,
                      txtController: _passwordController,
                      icon: Icon(Icons.lock),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFE3F5DF),
                          foregroundColor: Color(0xFF035C48),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onPressed: () {
                          print(
                              '${_emailController.text} ${_passwordController.text}');
                        },
                        child: Text(
                          'Sign - In',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '회원이 아니시라면? ',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '회원가입',
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
