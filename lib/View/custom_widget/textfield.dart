import 'package:flutter/material.dart';
import 'package:webapp/Constants/color_constants.dart';

class YJTextField extends StatelessWidget {
  final String hint;
  final String? text;
  final bool isPasswordField;
  final bool enable;
  final int? maxLength;
  final dynamic inputFormatters;
  final TextInputType keyboardType;
  final FocusNode? focusNode;
  final Function()? onTabPressed;
  final Function()? onTap;
  final Function(String? value)? onSaved;
  final Function(String? value)? onTextChange;
  final String? Function(String? value)? validator;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool isReadOnly;
  final int? maxLine;
  final String? infoMessage;
  final TextEditingController? controller;

  const YJTextField(
      {Key? key,
        this.onSaved,
        this.validator,
        this.maxLength,
        this.inputFormatters,
        this.text,
        this.focusNode,
        this.onTabPressed,
        this.onTap,
        this.isPasswordField = false,
        this.enable = true,
        this.onTextChange,
        this.suffixIcon,
        this.prefixIcon,
        this.isReadOnly = false,
        this.maxLine = 1,
        this.keyboardType = TextInputType.text,
        this.infoMessage,
        this.controller,
        required this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: isReadOnly,
      initialValue: text,
      onSaved: onSaved,
      validator: validator,
      maxLength: maxLength,
      onChanged: onTextChange,
      enabled: enable,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      obscureText: isPasswordField,
      style: Theme.of(context).textTheme.bodyMedium!.merge(TextStyle(color: Colors.white)),
      onTap: onTap,
      maxLines: maxLine,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 0,horizontal: 8),
        filled: enable,
        fillColor: Colors.transparent,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: false,
        constraints: BoxConstraints.tight(const Size.fromHeight(44)),
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey,fontSize: 12),
        counter: const Offstage(),
        suffixIcon: suffixIcon,
        suffixIconConstraints: BoxConstraints.tight(const Size(20, 20)),
        prefixIconConstraints: BoxConstraints.tight(const Size(34, 14)),
        prefixIcon: prefixIcon,
        errorMaxLines: 3,
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(0),
            borderSide: const BorderSide(color: Colors.transparent,width: 1)
        ),
        focusedBorder:  UnderlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide:  BorderSide(color: Theme.of(context).primaryColor,width: 1)
        ),
        // border: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(3)),
      ),
    );
  }
}
