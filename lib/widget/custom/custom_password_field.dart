import 'package:flutter/material.dart';

class CustomPasswordTextField extends StatelessWidget {
  const CustomPasswordTextField({
    super.key,
    required this.hintText,
    required this.textEditingController,
    this.validator,
    this.onChange,
    this.focusNode,
    this.enabled = true,
    this.maxLine = 1,
    this.textInputAction,
    required this.hidePassword,
    required this.ishide,
  });

  final FocusNode? focusNode;
  final String? hintText;
  final TextEditingController? textEditingController;
  final bool? enabled;
  final Function(String)? onChange;
  final String? Function(String?)? validator;
  final int? maxLine;
  final TextInputAction? textInputAction;
  final VoidCallback hidePassword;
  final bool ishide;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      validator: (validator == null) ? null : validator,
      enabled: enabled,
      onChanged: onChange,
      controller: textEditingController,
      maxLines: maxLine,
      focusNode: focusNode,
      cursorColor: Colors.green,
      obscureText: ishide,
      decoration: InputDecoration(
          fillColor: const Color.fromARGB(235, 70, 73, 83),
          filled: true,
          labelText: hintText,
          labelStyle: const TextStyle(
            color: Color.fromARGB(255, 200, 199, 199),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          suffixIcon: IconButton(
            onPressed: hidePassword,
            icon: ishide
                ? const Icon(Icons.visibility_outlined)
                : const Icon(Icons.visibility_off_outlined),
          )),
    );
  }
}
