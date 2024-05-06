import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moneytomoney/utils/focuschange.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final ValueNotifier<bool> _obsecurePassword = ValueNotifier<bool>(true);
  TextEditingController emailClr = TextEditingController();
  TextEditingController passwordClr = TextEditingController();
FocusNode emailFocusNode = FocusNode();
FocusNode passwordFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          TextFormField(
            controller: emailClr,
            keyboardType: TextInputType.emailAddress,
            focusNode: emailFocusNode,
            decoration: InputDecoration(
                hintText: "Email",
                labelText: "Email",
                prefixIcon: Icon(Icons.alternate_email_rounded)),
            onFieldSubmitted: (value){
              FocusChange.fieldFocusChange(context, emailFocusNode,passwordFocusNode );
            },
          ),
          ValueListenableBuilder(valueListenable: _obsecurePassword, builder: (context, value, child) {
            return TextFormField(
              controller: passwordClr,
              obscureText: _obsecurePassword.value,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock_open),suffixIcon:InkWell(onTap: () {
                _obsecurePassword.value =! _obsecurePassword.value;
                  },child: Icon(_obsecurePassword.value?Icons.visibility_off:Icons.visibility))),
              onFieldSubmitted: (value){
                FocusScope.of(context).requestFocus(passwordFocusNode);
              },
            );
          },)

        ],
      )),
    );
  }
}
