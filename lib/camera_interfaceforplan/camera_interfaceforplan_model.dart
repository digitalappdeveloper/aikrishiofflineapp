import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'camera_interfaceforplan_widget.dart' show CameraInterfaceforplanWidget;
import 'package:flutter/material.dart';

class CameraInterfaceforplanModel
    extends FlutterFlowModel<CameraInterfaceforplanWidget> {
  ///  Local state fields for this page.

  bool visScanning = true;

  String vprediction = '\"\"';

  double? vconfidence;

  String vtreatmentText = '\"\"';

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataM271 = false;
  FFUploadedFile uploadedLocalFile_uploadDataM271 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Backend Call - API (DetectDisease)] action in Icon widget.
  ApiCallResponse? apiResultxke;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
