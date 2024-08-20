import '/flutter_flow/flutter_flow_util.dart';
import 'details_plantes2_widget.dart' show DetailsPlantes2Widget;
import 'package:flutter/material.dart';

class DetailsPlantes2Model extends FlutterFlowModel<DetailsPlantes2Widget> {
  ///  State fields for stateful widgets in this page.

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
