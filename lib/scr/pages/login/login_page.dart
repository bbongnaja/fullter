import 'package:flutter/material.dart';

import '../../constants/asset.dart';
import '../app_routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _usernameEditController = TextEditingController();
  var _passwordEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 150,
              child: Image.asset(Asset.logoImage),
            ),
            Card(
                margin: const EdgeInsets.only(left: 30, right: 30),
                elevation: 10,
                child: Column(children: [
                  // Username
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: Row(
                      children: [
                        Icon(Icons.people),
                        SizedBox(width: 30),
                        Expanded(
                          child: TextField(
                            controller: _usernameEditController,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Password
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: Row(
                      children: [
                        Icon(Icons.lock),
                        SizedBox(width: 30),
                        Expanded(
                          child: TextField(
                            controller: _passwordEditController,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, left: 16, right: 16),
                    child: ElevatedButton(onPressed: _handleLogin, child: Text("Login")),
                  ),
                  // Register
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0, left: 16, right: 16),
                    child: OutlinedButton(onPressed: _handleRegister, child: Text("Register")),
                  ),

                ]))
          ],
        ),
      ),
    ));
  }

  void _handleLogin() {
    final username = _usernameEditController.text;
    final password = _passwordEditController.text;
    print("Login: $username, $password");

    // Navigator.pushNamed(context, AppRoute.home);
    Navigator.pushReplacementNamed(context, AppRoute.home);
  }

  void _handleRegister() {
    _usernameEditController.text = "";
    _passwordEditController.text = "";
    print("Register");
  }
}
