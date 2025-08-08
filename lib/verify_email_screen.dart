import 'package:flutter/material.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verify your email address'),
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
          spacing: 50,
          children: [
            RichText(
              textAlign: TextAlign.center,
              textHeightBehavior: TextHeightBehavior(
                applyHeightToFirstAscent: false,
                applyHeightToLastDescent: false,
              ),
              strutStyle: StrutStyle(height: 1.7),
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        'We sent you a 4 digit code to verify your email address ',
                  ),
                  TextSpan(
                    text: '(desx@gmail.com).',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: '\nEnter in the field below'),
                ],
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
            ),

            Container(
              height: 71,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) => Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFD9D9D9), width: 1),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '0',
                        hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 85, 85, 85),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                separatorBuilder: (context, index) => SizedBox(width: 10),
                itemCount: 4,
              ),
            ),

            Column(
              spacing: 7,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(text: 'Didn’t get the code? '),
                      TextSpan(
                        text: 'Resend',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(text: 'Expires in  '),
                      TextSpan(
                        text: '01:00',
                        style: TextStyle(color: Color(0xFF491B6D)),
                      ),
                    ],
                    style: TextStyle(
                      color: const Color.fromARGB(255, 85, 85, 85),
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF491B6D),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VerifyEmailScreen()),
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
