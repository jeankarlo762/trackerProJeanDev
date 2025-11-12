import '/backend/supabase/supabase.dart';
import '/components/cadastro_ticket_mobile/cadastro_ticket_mobile_widget.dart';
import '/components/maintenance_page/cadastro_ticket/cadastro_ticket_widget.dart';
import '/components/maintenance_page/details_ticket/details_ticket_widget.dart';
import '/components/maintenance_page/dialog_delete/dialog_delete_widget.dart';
import '/components/maintenance_page/drop_down_mobile/drop_down_mobile_widget.dart';
import '/components/maintenance_page/edit_ticket/edit_ticket_widget.dart';
import '/components/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'dart:async';
import 'maintenance_page_widget.dart' show MaintenancePageWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MaintenancePageModel extends FlutterFlowModel<MaintenancePageWidget> {
  ///  Local state fields for this page.

  String? statusSelecionado;

  ///  State fields for stateful widgets in this page.

  Completer<List<TicketsComStatusRow>>? requestCompleter6;
  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
  Completer<List<TicketsComStatusRow>>? requestCompleter1;
  Completer<List<TicketsComStatusRow>>? requestCompleter2;
  // State field(s) for inputHostname widget.
  FocusNode? inputHostnameFocusNode;
  TextEditingController? inputHostnameTextController;
  String? Function(BuildContext, String?)? inputHostnameTextControllerValidator;
  Completer<List<TicketsComStatusRow>>? requestCompleter4;
  Completer<List<TicketsComStatusRow>>? requestCompleter5;
  // State field(s) for DropDownStatusMobile3 widget.
  String? dropDownStatusMobile3Value;
  FormFieldController<String>? dropDownStatusMobile3ValueController;
  // State field(s) for inputHostnameMain widget.
  FocusNode? inputHostnameMainFocusNode;
  TextEditingController? inputHostnameMainTextController;
  String? Function(BuildContext, String?)?
      inputHostnameMainTextControllerValidator;
  Completer<List<TicketsComStatusRow>>? requestCompleter3;
  // State field(s) for DropDownStatus widget.
  String? dropDownStatusValue;
  FormFieldController<String>? dropDownStatusValueController;
  // State field(s) for DataTableSfiltro widget.
  final dataTableSfiltroController =
      FlutterFlowDataTableController<TicketsComStatusRow>();
  // State field(s) for DataTableFiltroAbertoMobile widget.
  final dataTableFiltroAbertoMobileController1 =
      FlutterFlowDataTableController<TicketsComStatusRow>();
  // State field(s) for DataTableFiltroAberto widget.
  final dataTableFiltroAbertoController =
      FlutterFlowDataTableController<TicketsComStatusRow>();
  // State field(s) for DataTableFiltroAbertoMobile widget.
  final dataTableFiltroAbertoMobileController2 =
      FlutterFlowDataTableController<TicketsComStatusRow>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<TicketsComStatusRow>();
  // State field(s) for DataTableMobile widget.
  final dataTableMobileController =
      FlutterFlowDataTableController<TicketsComStatusRow>();

  @override
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
  }

  @override
  void dispose() {
    sideBarNavModel.dispose();
    inputHostnameFocusNode?.dispose();
    inputHostnameTextController?.dispose();

    inputHostnameMainFocusNode?.dispose();
    inputHostnameMainTextController?.dispose();

    dataTableSfiltroController.dispose();
    dataTableFiltroAbertoMobileController1.dispose();
    dataTableFiltroAbertoController.dispose();
    dataTableFiltroAbertoMobileController2.dispose();
    paginatedDataTableController.dispose();
    dataTableMobileController.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted6({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter6?.isCompleted ?? false;
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

  Future waitForRequestCompleted4({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter4?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted5({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter5?.isCompleted ?? false;
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
