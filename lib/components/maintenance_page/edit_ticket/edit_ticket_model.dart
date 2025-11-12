import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'dart:async';
import 'edit_ticket_widget.dart' show EditTicketWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class EditTicketModel extends FlutterFlowModel<EditTicketWidget> {
  ///  Local state fields for this component.

  bool abrirHistorico = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for inputHostname widget.
  final inputHostnameKey = GlobalKey();
  FocusNode? inputHostnameFocusNode;
  TextEditingController? inputHostnameTextController;
  String? inputHostnameSelectedOption;
  String? Function(BuildContext, String?)? inputHostnameTextControllerValidator;
  Completer<List<AgentsAgentRow>>? requestCompleter2;
  // State field(s) for inputNomeColaborador widget.
  final inputNomeColaboradorKey = GlobalKey();
  FocusNode? inputNomeColaboradorFocusNode;
  TextEditingController? inputNomeColaboradorTextController;
  String? inputNomeColaboradorSelectedOption;
  String? Function(BuildContext, String?)?
      inputNomeColaboradorTextControllerValidator;
  // State field(s) for inputTelefoneColaborador widget.
  FocusNode? inputTelefoneColaboradorFocusNode;
  TextEditingController? inputTelefoneColaboradorTextController;
  late MaskTextInputFormatter inputTelefoneColaboradorMask;
  String? Function(BuildContext, String?)?
      inputTelefoneColaboradorTextControllerValidator;
  // State field(s) for inputDescricao widget.
  FocusNode? inputDescricaoFocusNode;
  TextEditingController? inputDescricaoTextController;
  String? Function(BuildContext, String?)?
      inputDescricaoTextControllerValidator;
  // State field(s) for inputSolicitante widget.
  final inputSolicitanteKey = GlobalKey();
  FocusNode? inputSolicitanteFocusNode;
  TextEditingController? inputSolicitanteTextController;
  String? inputSolicitanteSelectedOption;
  String? Function(BuildContext, String?)?
      inputSolicitanteTextControllerValidator;
  Completer<List<TicketHistoryRow>>? requestCompleter1;
  Completer<List<TicketsRow>>? requestCompleter3;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<TicketHistoryRow>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputHostnameFocusNode?.dispose();

    inputNomeColaboradorFocusNode?.dispose();

    inputTelefoneColaboradorFocusNode?.dispose();
    inputTelefoneColaboradorTextController?.dispose();

    inputDescricaoFocusNode?.dispose();
    inputDescricaoTextController?.dispose();

    inputSolicitanteFocusNode?.dispose();

    paginatedDataTableController.dispose();
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

  Future waitForRequestCompleted3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter3?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
