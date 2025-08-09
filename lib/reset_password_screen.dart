import 'package:design/constant.dart';
import 'package:design/home_screen.dart';
import 'package:design/widgets/app_form_field.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset password'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            AppFormField(
              label: 'New Password',
              suffixIcon: Icons.remove_red_eye_outlined,
              obscureText: true,
            ),
            SizedBox(height: 20),
            AppFormField(
              label: 'Confirm New Password',
              suffixIcon: Icons.remove_red_eye_outlined,
              obscureText: true,
            ),
            SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Constant.mainColor,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isDismissible: false,
                  enableDrag: false,
                  builder: (context) {
                    return WillPopScope(
                      onWillPop: () async => false,
                      child: Container(
                        padding: EdgeInsets.only(
                          top: 30,
                          bottom: 50,
                          right: 20,
                          left: 20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ),
                                  (route) => false,
                                );
                              },
                              child: Align(
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
                            ),
                            Text(
                              'Password reset successfully',
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Your password has been reset successfully. You can now log in with your new password.',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF4B4B4B),
                              ),
                            ),
                            SizedBox(height: 30),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ),
                                  (route) => false,
                                );
                              },
                              child: Text(
                                "Proceed",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Text(
                "Submit",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
