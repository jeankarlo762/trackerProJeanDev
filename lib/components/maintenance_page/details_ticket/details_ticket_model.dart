import '/backend/supabase/supabase.dart';
import '/components/maintenance_page/edit_ticket/edit_ticket_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'dart:async';
import 'details_ticket_widget.dart' show DetailsTicketWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetailsTicketModel extends FlutterFlowModel<DetailsTicketWidget> {
  ///  State fields for stateful widgets in this component.

  Completer<List<TicketsTecnicosRow>>? requestCompleter2;
  // State field(s) for inputComentario widget.
  FocusNode? inputComentarioFocusNode;
  TextEditingController? inputComentarioTextController;
  String? Function(BuildContext, String?)?
      inputComentarioTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in inputComentario widget.
  ComentsTicketRow? insertComentarioCopy;
  Completer<List<ComentsTicketRow>>? requestCompleter1;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ComentsTicketRow? insertComentario;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputComentarioFocusNode?.dispose();
    inputComentarioTextController?.dispose();
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
