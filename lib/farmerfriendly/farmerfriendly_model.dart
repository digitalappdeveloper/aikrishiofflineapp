import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'farmerfriendly_widget.dart' show FarmerfriendlyWidget;
import 'package:flutter/material.dart';

class FarmerfriendlyModel extends FlutterFlowModel<FarmerfriendlyWidget> {
  ///  Local state fields for this page.

  dynamic weatherData;

  bool isLoaded = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Weather API)] action in farmerfriendly widget.
  ApiCallResponse? apiResulttuf;
  // Stores action output result for [Backend Call - API (Weather API)] action in Text widget.
  ApiCallResponse? apiResult4mfscan;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
