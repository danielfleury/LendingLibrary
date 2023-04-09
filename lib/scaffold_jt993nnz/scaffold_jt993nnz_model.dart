import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/container1ka3qrhl_widget.dart';
import '/components/edit_profile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart' as badges;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class ScaffoldJt993nnzModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<EquipmentCollectionsRecord> simpleSearchResults = [];
  // Models for Container_1ka3qrhl dynamic component.
  late FlutterFlowDynamicModels<Container1ka3qrhlModel>
      container1ka3qrhlModels1;
  // Models for Container_1ka3qrhl dynamic component.
  late FlutterFlowDynamicModels<Container1ka3qrhlModel>
      container1ka3qrhlModels2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    container1ka3qrhlModels1 =
        FlutterFlowDynamicModels(() => Container1ka3qrhlModel());
    container1ka3qrhlModels2 =
        FlutterFlowDynamicModels(() => Container1ka3qrhlModel());
  }

  void dispose() {
    textController?.dispose();
    container1ka3qrhlModels1.dispose();
    container1ka3qrhlModels2.dispose();
  }

  /// Additional helper methods are added here.

}
