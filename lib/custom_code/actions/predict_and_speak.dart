// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:tflite_v2/tflite_v2.dart';
import 'package:flutter_tts/flutter_tts.dart';

Future<String> predictAndSpeak(String? imagePath) async {
  if (imagePath == null) return "Photo nahi mili";

  FlutterTts flutterTts = FlutterTts();

  try {
    // 1. Model Load karein
    await Tflite.loadModel(
      model: "assets/tflite/plant_model.tflite",
      labels: "assets/tflite/labels.txt",
    );

    // 2. Image Scan karein
    var recognitions = await Tflite.runModelOnImage(
      path: imagePath,
      numResults: 1,
      threshold: 0.4,
    );

    String resultText = "Bimari ki pehchan nahi ho saki";
    if (recognitions != null && recognitions.isNotEmpty) {
      resultText = recognitions[0]['label'].toString();
    }

    // 3. Voice Output (Hindi me Bolna)
    await flutterTts.setLanguage("hi-IN"); // Hindi Language
    await flutterTts.setPitch(1.0);
    await flutterTts.speak("Aapki fashal mein bimaari hai $resultText");

    // Ye text screen par dikhane ke liye return ho jayega
    return resultText;
  } catch (e) {
    return "Error: $e";
  }
}
