import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mandibhav_widget.dart' show MandibhavWidget;
import 'package:flutter/material.dart';

class MandibhavModel extends FlutterFlowModel<MandibhavWidget> {
  ///  Local state fields for this page.

  List<String> selectedCategory = [];
  void addToSelectedCategory(String item) => selectedCategory.add(item);
  void removeFromSelectedCategory(String item) => selectedCategory.remove(item);
  void removeAtIndexFromSelectedCategory(int index) =>
      selectedCategory.removeAt(index);
  void insertAtIndexInSelectedCategory(int index, String item) =>
      selectedCategory.insert(index, item);
  void updateSelectedCategoryAtIndex(int index, Function(String) updateFn) =>
      selectedCategory[index] = updateFn(selectedCategory[index]);

  dynamic mandiData;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (marketrpice)] action in mandibhav widget.
  ApiCallResponse? apiResultevz12;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<String> simpleSearchResults = [];
  // Stores action output result for [Custom Action - speechToText] action in Icon widget.
  String? aireponess;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    tabBarController?.dispose();
  }
}
