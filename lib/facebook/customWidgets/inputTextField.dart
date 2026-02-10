import 'package:flutter/material.dart';

class FaceBookInputField extends StatelessWidget {
  FaceBookInputField({
    required this.hint,
    required this.obscureText,
    this.validator,
    super.key,
  });

  String hint;
  String? Function(String?)? validator;
  bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(Icons.panorama_fish_eye),
        ),
        filled: true,
        fillColor: Color(0x78D6DFF1),
        hint: Text(
          hint,
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF898F9C),
            fontWeight: FontWeight.w400,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF898F9C), width: 1),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
