import '/backend/supabase/supabase.dart';
import '/components/inventario/inventory_details_device/inventory_details_device_widget.dart';
import '/components/inventario/lista_colab/lista_colab_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'dart:async';
import 'inventory_list_widget.dart' show InventoryListWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InventoryListModel extends FlutterFlowModel<InventoryListWidget> {
  ///  Local state fields for this component.

  bool viewBtnFiltro = false;

  bool viewColabAssociar = false;

  int? filtroTodos = 1;

  int? filtroDateUpdate;

  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  Completer<List<ViewInventarioDispositivosRow>>? requestCompleter;
  // State field(s) for DropDownDepartamento widget.
  String? dropDownDepartamentoValue;
  FormFieldController<String>? dropDownDepartamentoValueController;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<ViewInventarioDispositivosRow>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<ViewInventarioDispositivosRow>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<ViewInventarioDispositivosRow>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController4 =
      FlutterFlowDataTableController<ViewInventarioDispositivosRow>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    paginatedDataTableController1.dispose();
    paginatedDataTableController2.dispose();
    paginatedDataTableController3.dispose();
    paginatedDataTableController4.dispose();
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
