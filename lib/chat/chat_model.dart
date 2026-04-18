import '/flutter_flow/flutter_flow_util.dart';
import 'chat_widget.dart' show ChatWidget;
import 'package:flutter/material.dart';

class ChatModel extends FlutterFlowModel<ChatWidget> {
  ///  Local state fields for this page.

  String sttResul = '\"\"';

  bool isThinking = true;

  bool isRecording = true;

  String currentSTT = '\"\"';

  bool isAILoading = true;

  String chatInputText = '\"\"';

  bool? isListening;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - speechToText] action in Container widget.
  String? recognizedText;
  // Stores action output result for [Custom Action - speechToText] action in Icon widget.
  String? recognizedText1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [AI Agent - Send Message to aiagentkrishi] action in TextField widget.
  String? airesponseeC;
  // Stores action output result for [AI Agent - Send Message to aiagentkrishi] action in IconButton widget.
  String? airesponsee;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
