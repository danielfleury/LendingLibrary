import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/container42dlub16_widget.dart';
import '/components/edit_profile_widget.dart';
import '/components/view_profile_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ScaffoldZ65s6r2vModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  List<String>? choiceChipsValues;
  FormFieldController<List<String>>? choiceChipsController;
  // Models for Container_42dlub16 dynamic component.
  late FlutterFlowDynamicModels<Container42dlub16Model>
      container42dlub16Models1;
  // Models for Container_42dlub16 dynamic component.
  late FlutterFlowDynamicModels<Container42dlub16Model>
      container42dlub16Models2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    container42dlub16Models1 =
        FlutterFlowDynamicModels(() => Container42dlub16Model());
    container42dlub16Models2 =
        FlutterFlowDynamicModels(() => Container42dlub16Model());
  }

  void dispose() {
    container42dlub16Models1.dispose();
    container42dlub16Models2.dispose();
  }

  /// Additional helper methods are added here.

}
