import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'otp_verify_page_widget.dart' show OtpVerifyPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OtpVerifyPageModel extends FlutterFlowModel<OtpVerifyPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for otp widget.
  FocusNode? otpFocusNode;
  TextEditingController? otpController;
  String? Function(BuildContext, String?)? otpControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    otpFocusNode?.dispose();
    otpController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
