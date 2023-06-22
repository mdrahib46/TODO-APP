import 'package:flutter/material.dart';

TextStyle formTxtHeadingStyle = const TextStyle(
    fontSize: 25, fontWeight: FontWeight.w600, color: Colors.blue);

ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(20), backgroundColor: Colors.green);

InputDecoration titleInputDecoration(txt) {
  return InputDecoration(
      label: Text(
        txt,
        style: const TextStyle(
          fontSize: 20,
          letterSpacing: 2.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      labelStyle: const TextStyle(color: Colors.grey),
      contentPadding: const EdgeInsets.all(20),
      border: const OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.grey, width: 2.0)));
}

InputDecoration descInputDecoration(txt) {
  return InputDecoration(
    contentPadding: const EdgeInsets.all(20),
    label: Text(txt,
        style: const TextStyle(
          fontSize: 20,
          letterSpacing: 2.0,
          fontWeight: FontWeight.bold,
        )),
    labelStyle: const TextStyle(color: Colors.grey),
    border: const OutlineInputBorder(),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.grey, width: 2.0),
    ),
  );
}

TextStyle titleTextStyle = const TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: Colors.orange
);
TextStyle modalTitleTextStyle = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.orange
);

