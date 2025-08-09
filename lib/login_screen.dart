import 'package:design/constant.dart';
import 'package:design/login_screen.dart';
import 'package:design/verify_email_screen.dart';
import 'package:design/widgets/app_form_field.dart';
import 'package:design/widgets/login_register_switcher.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 117,
                  height: 100,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 15),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: Constant.mainColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Login to continue',
                  style: TextStyle(color: Constant.mainColor, fontSize: 18),
                ),
                SizedBox(height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    AppFormField(
                      label: 'Email Address',
                      prefixIcon: Icons.email_outlined,
                    ),
                    SizedBox(height: 25),
                    AppFormField(
                      label: 'Password',
                      suffixIcon: Icons.remove_red_eye_outlined,
                      obscureText: true,
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Forgot Password ?',
                      style: TextStyle(
                        color: Constant.mainColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 45),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VerifyEmailScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "LOG IN",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                LoginRegisterSwitcher(
                  mainText: 'Don\'t have an account ? ',
                  switchText: 'Sign Up',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
