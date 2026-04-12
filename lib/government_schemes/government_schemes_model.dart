import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'government_schemes_widget.dart' show GovernmentSchemesWidget;
import 'package:flutter/material.dart';

class GovernmentSchemesModel extends FlutterFlowModel<GovernmentSchemesWidget> {
  ///  Local state fields for this page.

  dynamic filteredSchemes;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GetAgriSchemes)] action in GovernmentSchemes widget.
  ApiCallResponse? apiResultvpu12;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
