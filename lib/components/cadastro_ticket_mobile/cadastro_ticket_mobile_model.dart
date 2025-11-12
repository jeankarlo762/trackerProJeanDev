import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'cadastro_ticket_mobile_widget.dart' show CadastroTicketMobileWidget;
import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CadastroTicketMobileModel
    extends FlutterFlowModel<CadastroTicketMobileWidget> {
  ///  Local state fields for this component.

  bool viewResponsavel = false;

  bool? viewCadastroColab = false;

  bool? modalColab = false;

  bool? hostnameSelecionado = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for inputHostname widget.
  FocusNode? inputHostnameFocusNode;
  TextEditingController? inputHostnameTextController;
  String? Function(BuildContext, String?)? inputHostnameTextControllerValidator;
  Completer<List<AgentsAgentRow>>? requestCompleter2;
  // State field(s) for InputColaboradorName widget.
  final inputColaboradorNameKey = GlobalKey();
  FocusNode? inputColaboradorNameFocusNode;
  TextEditingController? inputColaboradorNameTextController;
  String? inputColaboradorNameSelectedOption;
  String? Function(BuildContext, String?)?
      inputColaboradorNameTextControllerValidator;
  // State field(s) for InputTelefoneColaborador widget.
  FocusNode? inputTelefoneColaboradorFocusNode;
  TextEditingController? inputTelefoneColaboradorTextController;
  late MaskTextInputFormatter inputTelefoneColaboradorMask;
  String? Function(BuildContext, String?)?
      inputTelefoneColaboradorTextControllerValidator;
  // State field(s) for txtDescricao widget.
  FocusNode? txtDescricaoFocusNode;
  TextEditingController? txtDescricaoTextController;
  String? Function(BuildContext, String?)? txtDescricaoTextControllerValidator;
  // State field(s) for inputSolicitante widget.
  FocusNode? inputSolicitanteFocusNode;
  TextEditingController? inputSolicitanteTextController;
  late MaskTextInputFormatter inputSolicitanteMask;
  String? Function(BuildContext, String?)?
      inputSolicitanteTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  TicketsRow? resultInsert;
  Completer<List<TicketsRow>>? requestCompleter1;
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
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  CollaboratorsRow? insert;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputHostnameFocusNode?.dispose();
    inputHostnameTextController?.dispose();

    inputColaboradorNameFocusNode?.dispose();

    inputTelefoneColaboradorFocusNode?.dispose();
    inputTelefoneColaboradorTextController?.dispose();

    txtDescricaoFocusNode?.dispose();
    txtDescricaoTextController?.dispose();

    inputSolicitanteFocusNode?.dispose();
    inputSolicitanteTextController?.dispose();

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
  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
