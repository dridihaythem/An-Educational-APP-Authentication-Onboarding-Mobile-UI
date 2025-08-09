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
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              padding: EdgeInsets.only(
                                top: 30,
                                bottom: 50,
                                right: 20,
                                left: 20,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: CircleAvatar(
                                      radius: 17,
                                      child: Icon(
                                        Icons.close_rounded,
                                        color: Color.fromARGB(255, 75, 74, 74),
                                        size: 30,
                                      ),
                                      backgroundColor: Color(0xFFD9D9D9),
                                    ),
                                  ),
                                  Text(
                                    'Forgot your Password?',
                                    style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  Text(
                                    'Enter your email address and we will share a link to create a new password.',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF4B4B4B),
                                    ),
                                  ),
                                  SizedBox(height: 25),
                                  AppFormField(
                                    label: 'Email Address',
                                    prefixIcon: Icons.email_outlined,
                                  ),
                                  SizedBox(height: 20),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Row(
                                      spacing: 8,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.send),
                                        Text('Send'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Text(
                        'Forgot Password ?',
                        style: TextStyle(
                          color: Constant.mainColor,
                          fontWeight: FontWeight.bold,
                        ),
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
