// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_tts/flutter_tts.dart';

Future bolKarBatayein(String? textToSpeak) async {
  if (textToSpeak == null || textToSpeak.isEmpty) {
    return;
  }

  FlutterTts flutterTts = FlutterTts();

  // Hindi language set karna
  await flutterTts.setLanguage("hi-IN");

  // Awaaz ki raftaar (Kishano ke liye 0.4 ya 0.5 sahi hai)
  await flutterTts.setSpeechRate(0.5);

  // Awaaz ki pitch
  await flutterTts.setPitch(1.0);

  // Bolna shuru karein
  await flutterTts.speak(textToSpeak);
}
