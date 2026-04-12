// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatMessageStruct extends BaseStruct {
  ChatMessageStruct({
    String? text,
    String? sender,
    DateTime? timestamp,
    bool? isAudio,
    String? message,
    String? createdBy,
  })  : _text = text,
        _sender = sender,
        _timestamp = timestamp,
        _isAudio = isAudio,
        _message = message,
        _createdBy = createdBy;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;

  bool hasText() => _text != null;

  // "sender" field.
  String? _sender;
  String get sender => _sender ?? '';
  set sender(String? val) => _sender = val;

  bool hasSender() => _sender != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  set timestamp(DateTime? val) => _timestamp = val;

  bool hasTimestamp() => _timestamp != null;

  // "isAudio" field.
  bool? _isAudio;
  bool get isAudio => _isAudio ?? false;
  set isAudio(bool? val) => _isAudio = val;

  bool hasIsAudio() => _isAudio != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "created_by" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  set createdBy(String? val) => _createdBy = val;

  bool hasCreatedBy() => _createdBy != null;

  static ChatMessageStruct fromMap(Map<String, dynamic> data) =>
      ChatMessageStruct(
        text: data['text'] as String?,
        sender: data['sender'] as String?,
        timestamp: data['timestamp'] as DateTime?,
        isAudio: data['isAudio'] as bool?,
        message: data['message'] as String?,
        createdBy: data['created_by'] as String?,
      );

  static ChatMessageStruct? maybeFromMap(dynamic data) => data is Map
      ? ChatMessageStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'text': _text,
        'sender': _sender,
        'timestamp': _timestamp,
        'isAudio': _isAudio,
        'message': _message,
        'created_by': _createdBy,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
        'sender': serializeParam(
          _sender,
          ParamType.String,
        ),
        'timestamp': serializeParam(
          _timestamp,
          ParamType.DateTime,
        ),
        'isAudio': serializeParam(
          _isAudio,
          ParamType.bool,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'created_by': serializeParam(
          _createdBy,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChatMessageStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatMessageStruct(
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
        sender: deserializeParam(
          data['sender'],
          ParamType.String,
          false,
        ),
        timestamp: deserializeParam(
          data['timestamp'],
          ParamType.DateTime,
          false,
        ),
        isAudio: deserializeParam(
          data['isAudio'],
          ParamType.bool,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        createdBy: deserializeParam(
          data['created_by'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChatMessageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChatMessageStruct &&
        text == other.text &&
        sender == other.sender &&
        timestamp == other.timestamp &&
        isAudio == other.isAudio &&
        message == other.message &&
        createdBy == other.createdBy;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([text, sender, timestamp, isAudio, message, createdBy]);
}

ChatMessageStruct createChatMessageStruct({
  String? text,
  String? sender,
  DateTime? timestamp,
  bool? isAudio,
  String? message,
  String? createdBy,
}) =>
    ChatMessageStruct(
      text: text,
      sender: sender,
      timestamp: timestamp,
      isAudio: isAudio,
      message: message,
      createdBy: createdBy,
    );
