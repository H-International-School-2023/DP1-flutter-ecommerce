import 'package:flutter/cupertino.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  bool authenticationError = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Column(children: [
        CupertinoFormSection(children: [
          CupertinoFormRow(
              error: authenticationError
                  ? Text('Invalid username or password')
                  : null,
              child: CupertinoTextFormFieldRow(
                prefix: const Text('Email'),
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
              )),
          CupertinoFormRow(
              child: CupertinoTextFormFieldRow(
            prefix: const Text('Password'),
            obscureText: true,
            onChanged: (value) {
              setState(() {
                password = value;
              });
            },
          )),
          CupertinoButton(
            child: Text('Login'),
            onPressed: () {
              if (email == 'andrea.beggiato@h-is.com' &&
                  password == 'password') {
                // authenticated
              } else {
                setState(() {
                  authenticationError = true;
                });
                // user not found
              }
            },
          )
        ])
      ]),
    );
  }
}
