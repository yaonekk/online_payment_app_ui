import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
                  child: Icon(Icons.remove_red_eye_outlined),
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
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
            ),
          ],
        ),
      ),
    );
  }
}
