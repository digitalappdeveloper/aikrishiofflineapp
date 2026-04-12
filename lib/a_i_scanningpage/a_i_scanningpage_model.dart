import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'a_i_scanningpage_widget.dart' show AIScanningpageWidget;
import 'package:flutter/material.dart';

class AIScanningpageModel extends FlutterFlowModel<AIScanningpageWidget> {
  ///  Local state fields for this page.

  String vdiseaseHindi = '\"\"';

  bool visScanning = true;

  String vtreatmentHindi = '\"\"';

  String vconfidence = '\"\"';

  String vdiseaseName = '\"\"';

  String vfungusName = '\"\"';

  String affectedArea = '\"\"';

  String treatmentSteps = '\"\"';

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadData7hi12 = false;
  FFUploadedFile uploadedLocalFile_uploadData7hi12 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Backend Call - API (DetectDisease)] action in Button widget.
  ApiCallResponse? apiResultp37;
  // Stores action output result for [Backend Call - API (DetectDisease)] action in Row widget.
  ApiCallResponse? apiResultvag;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
