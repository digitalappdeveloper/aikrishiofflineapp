import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _lastScanImage = '';
  String get lastScanImage => _lastScanImage;
  set lastScanImage(String value) {
    _lastScanImage = value;
  }

  List<dynamic> _scanHistory = [];
  List<dynamic> get scanHistory => _scanHistory;
  set scanHistory(List<dynamic> value) {
    _scanHistory = value;
  }

  void addToScanHistory(dynamic value) {
    scanHistory.add(value);
  }

  void removeFromScanHistory(dynamic value) {
    scanHistory.remove(value);
  }

  void removeAtIndexFromScanHistory(int index) {
    scanHistory.removeAt(index);
  }

  void updateScanHistoryAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    scanHistory[index] = updateFn(_scanHistory[index]);
  }

  void insertAtIndexInScanHistory(int index, dynamic value) {
    scanHistory.insert(index, value);
  }

  String _dailyTipMain = '';
  String get dailyTipMain => _dailyTipMain;
  set dailyTipMain(String value) {
    _dailyTipMain = value;
  }

  String _dailyTipSub = '';
  String get dailyTipSub => _dailyTipSub;
  set dailyTipSub(String value) {
    _dailyTipSub = value;
  }

  dynamic _recentScans = jsonDecode(
      '{\"disease\":\"Tomato Leaf Spot\",\"date\":\"2 days ago\",\"status\":\"Detected\"}');
  dynamic get recentScans => _recentScans;
  set recentScans(dynamic value) {
    _recentScans = value;
  }

  bool _isSpeaking = false;
  bool get isSpeaking => _isSpeaking;
  set isSpeaking(bool value) {
    _isSpeaking = value;
  }

  List<ChatMessageStruct> _chatHistoryyy = [
    ChatMessageStruct.fromSerializableMap(jsonDecode(
        '{\"text\":\"user\",\"sender\":\"Hello World\",\"timestamp\":\"1775283198583\",\"isAudio\":\"false\"}')),
    ChatMessageStruct.fromSerializableMap(jsonDecode(
        '{\"text\":\"Hello World\",\"sender\":\"message\",\"timestamp\":\"1775283229505\",\"isAudio\":\"false\"}'))
  ];
  List<ChatMessageStruct> get chatHistoryyy => _chatHistoryyy;
  set chatHistoryyy(List<ChatMessageStruct> value) {
    _chatHistoryyy = value;
  }

  void addToChatHistoryyy(ChatMessageStruct value) {
    chatHistoryyy.add(value);
  }

  void removeFromChatHistoryyy(ChatMessageStruct value) {
    chatHistoryyy.remove(value);
  }

  void removeAtIndexFromChatHistoryyy(int index) {
    chatHistoryyy.removeAt(index);
  }

  void updateChatHistoryyyAtIndex(
    int index,
    ChatMessageStruct Function(ChatMessageStruct) updateFn,
  ) {
    chatHistoryyy[index] = updateFn(_chatHistoryyy[index]);
  }

  void insertAtIndexInChatHistoryyy(int index, ChatMessageStruct value) {
    chatHistoryyy.insert(index, value);
  }
}
