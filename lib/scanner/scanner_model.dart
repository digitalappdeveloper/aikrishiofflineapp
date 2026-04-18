import '/flutter_flow/flutter_flow_util.dart';
import 'scanner_widget.dart' show ScannerWidget;
import 'package:flutter/material.dart';

class ScannerModel extends FlutterFlowModel<ScannerWidget> {
  ///  Local state fields for this page.

  String scannedResult = '\"\"';

  bool isScanning = true;

  String treatmentSteps = '\"\"';

  String diseaseName = '\"\"';

  String affectedArea = '\"\"';

  String pathogen = '\"\"';

  List<String> treatmentList = [];
  void addToTreatmentList(String item) => treatmentList.add(item);
  void removeFromTreatmentList(String item) => treatmentList.remove(item);
  void removeAtIndexFromTreatmentList(int index) =>
      treatmentList.removeAt(index);
  void insertAtIndexInTreatmentList(int index, String item) =>
      treatmentList.insert(index, item);
  void updateTreatmentListAtIndex(int index, Function(String) updateFn) =>
      treatmentList[index] = updateFn(treatmentList[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - predictAndSpeak] action in scanner widget.
  String? loadModel;
  bool isDataUploading_uploadDataPhoto123 = false;
  FFUploadedFile uploadedLocalFile_uploadDataPhoto123 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Custom Action - predictAndSpeak] action in Button widget.
  String? aiResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
