import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/container2wy5ng9s_widget.dart';
import '/components/container6zuljjvn_widget.dart';
import '/components/container_kmhkz2mm_widget.dart';
import '/components/container_sae43ci3_widget.dart';
import '/components/view_profile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ScaffoldE7ox2q1fModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Models for Container_2wy5ng9s dynamic component.
  late FlutterFlowDynamicModels<Container2wy5ng9sModel> container2wy5ng9sModels;
  // Model for Container_kmhkz2mm component.
  late ContainerKmhkz2mmModel containerKmhkz2mmModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    container2wy5ng9sModels =
        FlutterFlowDynamicModels(() => Container2wy5ng9sModel());
    containerKmhkz2mmModel =
        createModel(context, () => ContainerKmhkz2mmModel());
  }

  void dispose() {
    container2wy5ng9sModels.dispose();
    containerKmhkz2mmModel.dispose();
  }

  /// Additional helper methods are added here.

}
