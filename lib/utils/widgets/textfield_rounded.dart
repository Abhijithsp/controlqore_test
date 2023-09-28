import 'package:controlqore_test/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

TextFormField customTextfieldRounded(
    {required cntr,
      required txt,
      address = false,

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
    maxLines: address ? 4 : 1,
    readOnly: isRead ? true : false,
    onTap: isRead ? onTap : null,
    style: const TextStyle(fontSize: 15),
    decoration: InputDecoration(
      counterText: "",
      contentPadding: address
          ? const EdgeInsets.fromLTRB(12, 8, 12, 8)
          : const EdgeInsets.symmetric(horizontal: 5),
      hintText: txt,
      errorStyle: const TextStyle(
        color: Colors.red,
      ),
      labelStyle: const TextStyle(fontSize: 15, color: colorBlack),
      fillColor: Colors.white,
      filled: true,
      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: colorBlack),
          borderRadius: BorderRadius.circular(10)),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorBlack),
          borderRadius: BorderRadius.circular(10)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorBlack),
          borderRadius: BorderRadius.circular(10)),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorGold),
          borderRadius: BorderRadius.circular(10)),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: colorGold),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}