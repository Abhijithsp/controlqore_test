import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/colors.dart';
import '../constants/text_styles.dart';

//// field

TextFormField customTextfield(
    {required cntr,
      required txt,
      address = false,
      required ic,
      date = false,
      void Function()? onTap,
      isRead = false,
      number = false}) {
  return TextFormField(
    controller: cntr,
    validator: (value) {
      if (value!.isEmpty) {
        return "*required";
      } else {
        return null;
      }
    },
    keyboardType: number ? TextInputType.number : TextInputType.text,
    inputFormatters: number ? [FilteringTextInputFormatter.digitsOnly] : null,
    maxLength: number ? 10 : null,
    onTap: isRead ? onTap : null,
    style:  normalText,
    decoration: InputDecoration(
      hintText: txt,
      hintStyle: normalDataText,
      errorStyle: const TextStyle(
        color: Colors.blue,
      ),
      labelStyle: const TextStyle(fontSize: 11, color: colorWhite),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color:colorWhite),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: colorWhite),
      ),
      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: colorRed),
          borderRadius: BorderRadius.circular(10)),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorGold.withOpacity(.3))),

    ),
  );
}