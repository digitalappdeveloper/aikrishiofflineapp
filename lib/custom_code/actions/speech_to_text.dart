// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:speech_to_text/speech_to_text.dart' as stt;

Future<String?> speechToText() async {
  stt.SpeechToText speech = stt.SpeechToText();
  bool available = await speech.initialize();
  String resultText = "";

  if (available) {
    await speech.listen(
      onResult: (result) {
        resultText = result.recognizedWords;
      },
      localeId: "hi_IN", // Isse Hindi support hoga
    );

    // 5 second tak wait karein awaaz record karne ke liye
    await Future.delayed(Duration(seconds: 5));
    await speech.stop();
    return resultText;
  } else {
    return "Speech recognition not available";
  }
}
