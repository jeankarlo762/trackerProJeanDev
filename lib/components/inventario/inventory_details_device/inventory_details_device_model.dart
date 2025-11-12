import '/backend/supabase/supabase.dart';
import '/components/inventario/lista_colab/lista_colab_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'inventory_details_device_widget.dart' show InventoryDetailsDeviceWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InventoryDetailsDeviceModel
    extends FlutterFlowModel<InventoryDetailsDeviceWidget> {
  ///  Local state fields for this component.

  List<dynamic> softwares = [];
  void addToSoftwares(dynamic item) => softwares.add(item);
  void removeFromSoftwares(dynamic item) => softwares.remove(item);
  void removeAtIndexFromSoftwares(int index) => softwares.removeAt(index);
  void insertAtIndexInSoftwares(int index, dynamic item) =>
      softwares.insert(index, item);
  void updateSoftwaresAtIndex(int index, Function(dynamic) updateFn) =>
      softwares[index] = updateFn(softwares[index]);

  bool nomeAsc = false;

  bool versaoAsc = false;

  bool dateRecente = false;

  bool semFiltro = true;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in inventoryDetailsDevice widget.
  List<SoftwareInstalledsoftwareRow>? softwaresAgents;
  Completer<List<AgentsAgentRow>>? requestCompleter1;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<AdressRow>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  Completer<List<VwInstalledSoftwaresRow>>? requestCompleter2;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<VwInstalledSoftwaresRow>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<VwInstalledSoftwaresRow>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController4 =
      FlutterFlowDataTableController<VwInstalledSoftwaresRow>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController5 =
      FlutterFlowDataTableController<VwInstalledSoftwaresRow>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController1.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    paginatedDataTableController2.dispose();
    paginatedDataTableController3.dispose();
    paginatedDataTableController4.dispose();
    paginatedDataTableController5.dispose();
  }

  /// Additional helper methods.
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
}
