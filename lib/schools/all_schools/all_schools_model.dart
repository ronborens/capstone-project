import '/flutter_flow/flutter_flow_util.dart';
import 'all_schools_widget.dart' show AllSchoolsWidget;
import 'package:flutter/material.dart';

class AllSchoolsModel extends FlutterFlowModel<AllSchoolsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for searchBar widget.
  FocusNode? searchBarFocusNode;
  TextEditingController? searchBarController;
  String? Function(BuildContext, String?)? searchBarControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    searchBarFocusNode?.dispose();
    searchBarController?.dispose();
  }
}