import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _chatMessages = prefs
              .getStringList('ff_chatMessages')
              ?.map((x) {
                try {
                  return ChatMessageStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _chatMessages;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

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

  bool _isModelLoaded = false;
  bool get isModelLoaded => _isModelLoaded;
  set isModelLoaded(bool value) {
    _isModelLoaded = value;
  }

  String _hindiVoice = '';
  String get hindiVoice => _hindiVoice;
  set hindiVoice(String value) {
    _hindiVoice = value;
  }

  List<ChatMessageStruct> _chatMessages = [];
  List<ChatMessageStruct> get chatMessages => _chatMessages;
  set chatMessages(List<ChatMessageStruct> value) {
    _chatMessages = value;
    prefs.setStringList(
        'ff_chatMessages', value.map((x) => x.serialize()).toList());
  }

  void addToChatMessages(ChatMessageStruct value) {
    chatMessages.add(value);
    prefs.setStringList(
        'ff_chatMessages', _chatMessages.map((x) => x.serialize()).toList());
  }

  void removeFromChatMessages(ChatMessageStruct value) {
    chatMessages.remove(value);
    prefs.setStringList(
        'ff_chatMessages', _chatMessages.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromChatMessages(int index) {
    chatMessages.removeAt(index);
    prefs.setStringList(
        'ff_chatMessages', _chatMessages.map((x) => x.serialize()).toList());
  }

  void updateChatMessagesAtIndex(
    int index,
    ChatMessageStruct Function(ChatMessageStruct) updateFn,
  ) {
    chatMessages[index] = updateFn(_chatMessages[index]);
    prefs.setStringList(
        'ff_chatMessages', _chatMessages.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInChatMessages(int index, ChatMessageStruct value) {
    chatMessages.insert(index, value);
    prefs.setStringList(
        'ff_chatMessages', _chatMessages.map((x) => x.serialize()).toList());
  }

  String _airesponse = '';
  String get airesponse => _airesponse;
  set airesponse(String value) {
    _airesponse = value;
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
  }

  String _conversionId = '';
  String get conversionId => _conversionId;
  set conversionId(String value) {
    _conversionId = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
