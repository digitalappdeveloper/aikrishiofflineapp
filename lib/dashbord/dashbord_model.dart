import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dashbord_widget.dart' show DashbordWidget;
import 'package:flutter/material.dart';

class DashbordModel extends FlutterFlowModel<DashbordWidget> {
  ///  Local state fields for this page.

  dynamic weatherData;

  bool isLoaded = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Weather API)] action in dashbord widget.
  ApiCallResponse? apiResulttuf;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
