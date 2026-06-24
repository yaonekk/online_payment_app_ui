import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:online_payment/shared/widgets/custom_btn.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text('Sign Up', style: TextStyle(fontSize: 32, fontWeight: .bold)),
            SizedBox(height: 30),
            Text('Full Name', style: TextStyle(color: Color(0XEEA2A2A7))),
            TextField(
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0XEEA2A2A7)),
                ),

                prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Opacity(
                    opacity: 0.5,
                    child: Icon(Icons.person_2_outlined, size: 25),
                  ),
                ),
                contentPadding: .all(15),
                prefixIconConstraints: BoxConstraints(),
              ),
            ),
            SizedBox(height: 20),

            Text('Phone Number', style: TextStyle(color: Color(0XEEA2A2A7))),
            TextField(
              keyboardType: .numberWithOptions(),
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0XEEA2A2A7)),
                ),

                prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Opacity(
                    opacity: 0.5,
                    child: Icon(Icons.phone_outlined, size: 25),
                  ),
                ),
                contentPadding: .all(15),
                prefixIconConstraints: BoxConstraints(),
              ),
            ),
            SizedBox(height: 20),

            Text('Email Adress', style: TextStyle(color: Color(0XEEA2A2A7))),
            TextField(
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0XEEA2A2A7)),
                ),

                prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Opacity(
                    opacity: 0.5,
                    child: Icon(Icons.mail_outline_rounded, size: 25),
                  ),
                ),
                contentPadding: .all(15),
                prefixIconConstraints: BoxConstraints(),
              ),
            ),
            SizedBox(height: 20),
            Text('Password', style: TextStyle(color: Color(0XEEA2A2A7))),
            TextField(
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0XEEA2A2A7)),
                ),
                suffixIcon: Opacity(
                  opacity: 0.5,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    icon: _obscureText
                        ? Icon(Icons.remove_red_eye_outlined)
                        : Icon(Icons.remove_red_eye_rounded),
                  ),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Opacity(
                    opacity: 0.5,
                    child: Icon(Icons.lock_outline_rounded, size: 25),
                  ),
                ),
                contentPadding: .all(15),
                prefixIconConstraints: BoxConstraints(),
              ),
              obscureText: _obscureText,
              enableSuggestions: false,
              autocorrect: false,
            ),
            SizedBox(height: 50),
            Center(
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Placeholder()),
                ),
                child: CustomBtn(textBtn: 'Sign Up'),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Already have an account.',
                      style: TextStyle(color: Color(0XEEA2A2A7), fontSize: 15),
                    ),
                    TextSpan(
                      text: ' Sign In',
                      style: TextStyle(
                        fontWeight: .bold,
                        color: Color(0XEE0066FF),
                        fontSize: 15,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pop(context);
                        },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
