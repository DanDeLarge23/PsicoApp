import '/flutter_flow/flutter_flow_util.dart';
import 'testimonios_widget.dart' show TestimoniosWidget;
import 'package:flutter/material.dart';

class TestimoniosModel extends FlutterFlowModel<TestimoniosWidget> {
  ///  State fields for stateful widgets in this page.

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
    tabBarController?.dispose();
  }
}
