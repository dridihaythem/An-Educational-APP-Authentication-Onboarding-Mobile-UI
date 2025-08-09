import 'package:design/constant.dart';
import 'package:design/verify_email_screen.dart';
import 'package:design/widgets/app_form_field.dart';
import 'package:design/widgets/login_register_switcher.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                  'Create An Account',
                  style: TextStyle(
                    color: Constant.mainColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                Column(
                  spacing: 20,
                  children: [
                    AppFormField(label: 'Name'),
                    AppFormField(
                      label: 'Email Address',
                      prefixIcon: Icons.email_outlined,
                    ),
                    AppFormField(
                      label: 'Password',
                      suffixIcon: Icons.remove_red_eye_outlined,
                      obscureText: true,
                    ),
                    AppFormField(
                      label: 'Confirm Password',
                      suffixIcon: Icons.remove_red_eye_outlined,
                      obscureText: true,
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
                    "SIGN UP",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                LoginRegisterSwitcher(
                  mainText: 'Already have an account? ',
                  switchText: 'Log in',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
