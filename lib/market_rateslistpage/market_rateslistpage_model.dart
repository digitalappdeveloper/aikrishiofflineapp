import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'market_rateslistpage_widget.dart' show MarketRateslistpageWidget;
import 'package:flutter/material.dart';

class MarketRateslistpageModel
    extends FlutterFlowModel<MarketRateslistpageWidget> {
  ///  Local state fields for this page.

  String vstate = '\"Jharkhand\"';

  String vcropSearch = '\"\"';

  String vcommodityGroup = '\"\"';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (marketrpice)] action in MarketRateslistpage widget.
  ApiCallResponse? apiResultb2712;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<String> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
