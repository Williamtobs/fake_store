import 'package:fake_store/src/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.validator,
    this.onDone,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction,
    this.hintText,
    this.initialValue,
    this.suffixIcon,
    this.prefixIcon,
    this.prefix,
    this.enabled = true,
    this.controller,
    this.autovalidateMode,
    this.textAlign = TextAlign.start,
    this.onChanged,
    this.onTap,
    this.readOnly = false,
    this.maxLength,
    this.inputFormatters,
    this.hintStyle,
    this.maxLines = 1,
    this.focusNode,
    this.value,
    this.height,
    this.autoCorrect = true,
    this.textCapitalization = TextCapitalization.sentences,
  });

  final String? Function(String?)? validator;
  final ValueChanged<String?>? onDone;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextInputAction? textInputAction;
  final String? hintText;
  final String? initialValue;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget? prefix;
  final bool enabled;
  final TextEditingController? controller;
  final AutovalidateMode? autovalidateMode;
  final TextAlign textAlign;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final bool readOnly;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final TextStyle? hintStyle;
  final int maxLines;
  final FocusNode? focusNode;
  final String? value;
  final double? height;
  final bool autoCorrect;
  final TextCapitalization textCapitalization;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextFormField(
        controller: controller,
        autovalidateMode: autovalidateMode,
        textAlign: textAlign,
        onChanged: onChanged,
        onTap: onTap,
        readOnly: readOnly,
        maxLength: maxLength,
        inputFormatters: inputFormatters,
        style: GoogleFonts.urbanist(
          fontSize: 15.fontSize,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintStyle ??
              GoogleFonts.urbanist(
                fontSize: 15.fontSize,
                color: const Color(0xFF8391a1),
                fontWeight: FontWeight.w500,
              ),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          prefix: prefix,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 18.width,
            vertical: 16.height,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.radius),
            borderSide: const BorderSide(
              color: Color(0xFFe8ecf4),
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.radius),
            borderSide: const BorderSide(
              color: Color(0xFFe8ecf4),
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.radius),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 203, 205, 213),
              width: 1,
            ),
          ),
          filled: true,
          fillColor: const Color(0xFFf7f8f9),
        ),
        validator: validator,
        onFieldSubmitted: onDone,
        obscureText: obscureText,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        enabled: enabled,
        maxLines: maxLines,
        focusNode: focusNode,
        initialValue: value,
        textCapitalization: textCapitalization,
      ),
    );
  }
}
