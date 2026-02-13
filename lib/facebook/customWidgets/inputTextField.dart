import 'package:flutter/material.dart';

class FaceBookInputField extends StatefulWidget {
  FaceBookInputField({
    required this.hint,
    required this.obscureText,
    required this.onChange,
    this.validator,
    super.key,
  });

  String hint;
  String? Function(String?)? validator;
  bool? obscureText;
  Function(String value) onChange;

  @override
  State<FaceBookInputField> createState() => _FaceBookInputFieldState();
}

class _FaceBookInputFieldState extends State<FaceBookInputField> {
  late bool isVisible;

  @override
  void initState() {
    isVisible = widget.obscureText ?? false;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return TextFormField(
      onChanged: widget.onChange,
      validator: widget.validator,
      obscureText: isVisible,
      decoration: InputDecoration(
        suffixIcon: widget.obscureText ?? false
            ? IconButton(
                onPressed: () {
                  isVisible = !isVisible;
                  setState(() {});
                },
                icon: Icon(isVisible ? Icons.visibility : Icons.visibility_off),
              )
            : SizedBox(),
        filled: true,
        fillColor: Color(0x78D6DFF1),
        hint: Text(
          widget.hint,
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
