import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:online_payment/features/screens/onboarding/auth/sign_up_screen.dart';
import 'package:online_payment/shared/widgets/custom_btn.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
            Text('Sign In', style: TextStyle(fontSize: 32, fontWeight: .bold)),
            SizedBox(height: 30),
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
                child: CustomBtn(textBtn: 'Sign In'),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'I\'m a new user.',
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          );
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
