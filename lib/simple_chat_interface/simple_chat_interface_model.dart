import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'simple_chat_interface_widget.dart' show SimpleChatInterfaceWidget;
import 'package:flutter/material.dart';

class SimpleChatInterfaceModel
    extends FlutterFlowModel<SimpleChatInterfaceWidget> {
  ///  Local state fields for this page.

  String sttResul = '\"\"';

  bool isThinking = true;

  bool isRecording = true;

  String currentSTT = '\"\"';

  bool isAILoading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - speechToText] action in Icon widget.
  String? speechtoText12;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [AI Agent - Send Message to aiagentkrishi] action in TextField widget.
  String? aIresponse311;
  // Stores action output result for [AI Agent - Send Message to aiagentkrishi] action in IconButton widget.
  String? aIresponse3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
