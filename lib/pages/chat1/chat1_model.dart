import '/flutter_flow/flutter_flow_util.dart';
import 'chat1_widget.dart' show Chat1Widget;
import 'package:flutter/material.dart';

class Chat1Model extends FlutterFlowModel<Chat1Widget> {
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
