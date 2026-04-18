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

Future<String> offlineDiseaseDetection(String imagePath) async {
  FlutterTts flutterTts = FlutterTts();

  try {
    // 1. Model aur Labels load karein (Assets se)
    await Tflite.loadModel(
      model: "assets/tflite/plant_model.tflite",
      labels: "assets/tflite/labels.txt",
    );

    // 2. Image scan karein
    var recognitions = await Tflite.runModelOnImage(
      path: imagePath,
      numResults: 1,
      threshold: 0.5,
    );

    String result = "Bimari ki pehchan nahi ho saki";

    if (recognitions != null && recognitions.isNotEmpty) {
      result = recognitions[0]['label'].toString();
    }

    // 3. Voice Output (Bol kar batana)
    await flutterTts.setLanguage("hi-IN"); // Hindi bhasha
    await flutterTts.setPitch(1.0);
    await flutterTts.speak("Aapki fashal mein bimaari hai: $result");

    return result;
  } catch (e) {
    return "Error: $e";
  } finally {
    // Kaam khatam hone par resources free karein
    // Tflite.close(); // Ise tabhi karein jab app band ho raha ho
  }
}
