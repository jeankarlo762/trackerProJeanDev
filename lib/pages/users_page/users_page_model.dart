import '/backend/supabase/supabase.dart';
import '/components/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/user_page/add_new_user/add_new_user_widget.dart';
import '/user_page/card_user_info/card_user_info_widget.dart';
import 'dart:ui';
import 'dart:async';
import 'users_page_widget.dart' show UsersPageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UsersPageModel extends FlutterFlowModel<UsersPageWidget> {
  ///  Local state fields for this page.

  bool filtroInativo = false;

  String? filtroDepartamento;

  String? filtroPesquisa;

  String? filtroCargo;

  bool filtroAtivo = false;

  ///  State fields for stateful widgets in this page.

  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
  // State field(s) for inputSearchUsers widget.
  String? inputSearchUsersValue1;
  FormFieldController<String>? inputSearchUsersValueController1;
  Completer<List<ViewColaboradorDetailsRow>>? requestCompleter;
  // State field(s) for inputSearchUsers widget.
  FocusNode? inputSearchUsersFocusNode;
  TextEditingController? inputSearchUsersTextController;
  String? Function(BuildContext, String?)?
      inputSearchUsersTextControllerValidator;
  // State field(s) for inputSearchUsers widget.
  String? inputSearchUsersValue2;
  FormFieldController<String>? inputSearchUsersValueController2;

  @override
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
  }

  @override
  void dispose() {
    sideBarNavModel.dispose();
    inputSearchUsersFocusNode?.dispose();
    inputSearchUsersTextController?.dispose();
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
