import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key, required this.textBtn});
  final String textBtn;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 360,
      decoration: BoxDecoration(
        borderRadius: .circular(16),
        color: Color(0XEE0066FF),
      ),
      child: Center(
        child: Text(
          textBtn,
          style: TextStyle(
            fontWeight: .bold,
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
