import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'dart:async';
import 'edit_user_widget.dart' show EditUserWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class EditUserModel extends FlutterFlowModel<EditUserWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading_uploadFotoEditUser = false;
  FFUploadedFile uploadedLocalFile_uploadFotoEditUser =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadFotoEditUser = '';

  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<UserProfilesRow>? updateFoto;
  Completer<List<CollaboratorsRow>>? requestCompleter;
  // State field(s) for inputFirstName widget.
  FocusNode? inputFirstNameFocusNode;
  TextEditingController? inputFirstNameTextController;
  String? Function(BuildContext, String?)?
      inputFirstNameTextControllerValidator;
  // State field(s) for inputLastName widget.
  FocusNode? inputLastNameFocusNode;
  TextEditingController? inputLastNameTextController;
  String? Function(BuildContext, String?)? inputLastNameTextControllerValidator;
  // State field(s) for inputEmail widget.
  FocusNode? inputEmailFocusNode;
  TextEditingController? inputEmailTextController;
  String? Function(BuildContext, String?)? inputEmailTextControllerValidator;
  // State field(s) for inputPhone widget.
  FocusNode? inputPhoneFocusNode;
  TextEditingController? inputPhoneTextController;
  late MaskTextInputFormatter inputPhoneMask;
  String? Function(BuildContext, String?)? inputPhoneTextControllerValidator;
  // State field(s) for inputPosition widget.
  FocusNode? inputPositionFocusNode;
  TextEditingController? inputPositionTextController;
  String? Function(BuildContext, String?)? inputPositionTextControllerValidator;
  // State field(s) for inputDepartament widget.
  int? inputDepartamentValue;
  FormFieldController<int>? inputDepartamentValueController;
  // Stores action output result for [Custom Action - verificaErro] action in Button widget.
  String? response;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<CollaboratorsRow>? responseAddUserCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputFirstNameFocusNode?.dispose();
    inputFirstNameTextController?.dispose();

    inputLastNameFocusNode?.dispose();
    inputLastNameTextController?.dispose();

    inputEmailFocusNode?.dispose();
    inputEmailTextController?.dispose();

    inputPhoneFocusNode?.dispose();
    inputPhoneTextController?.dispose();

    inputPositionFocusNode?.dispose();
    inputPositionTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
