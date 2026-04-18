// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// YE LINES JO FLUTTERFLOW KHUD LIKHTA HAI, UNHE REHNE DEIN (DO NOT REMOVE)

import 'package:flutter_tts/flutter_tts.dart'; // Sirf ye line add karein imports mein

Future textToSpeech(String? textToRead) async {
  // Agar text khali hai toh kuch mat karo
  if (textToRead == null || textToRead.isEmpty) {
    return;
  }

  FlutterTts flutterTts = FlutterTts();

  // Hindi Language Set Karein
  await flutterTts.setLanguage("hi-IN");

  // Awaaz ki speed (0.4 thoda dhire aur saaf hota hai kisan ke liye)
  await flutterTts.setSpeechRate(0.4);

  // Awaaz ki pitch
  await flutterTts.setPitch(1.0);

  await flutterTts.speak(textToRead);
}
