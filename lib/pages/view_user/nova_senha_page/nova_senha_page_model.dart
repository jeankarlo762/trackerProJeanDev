import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'nova_senha_page_widget.dart' show NovaSenhaPageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class NovaSenhaPageModel extends FlutterFlowModel<NovaSenhaPageWidget> {
  ///  Local state fields for this page.

  double progress = 0.0;

  bool validaMaiuscula = false;

  bool validaMinuscula = false;

  bool validaCaractereMin = false;

  bool validaCaractereMax = false;

  bool validaNum = false;

  bool validaEspecial = false;

  bool senhaIgual = false;

  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for senha widget.
  FocusNode? senhaFocusNode1;
  TextEditingController? senhaTextController1;
  late bool senhaVisibility1;
  String? Function(BuildContext, String?)? senhaTextController1Validator;
  String? _senhaTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter new password is required';
    }

    if (val.length < 3) {
      return 'A senha precisa ter pelo menos 3 caracteres.';
    }
    if (val.length > 30) {
      return 'Sua senha ultrapassou os 30 caracteres';
    }

    return null;
  }

  // State field(s) for confirmarSenha widget.
  FocusNode? confirmarSenhaFocusNode1;
  TextEditingController? confirmarSenhaTextController1;
  late bool confirmarSenhaVisibility1;
  String? Function(BuildContext, String?)?
      confirmarSenhaTextController1Validator;
  String? _confirmarSenhaTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm new password is required';
    }

    if (val.length < 3) {
      return 'A senha precisa ter pelo menos 3 caracteres.';
    }
    if (val.length > 30) {
      return 'Sua senha ultrapassou os 30 caracteres';
    }

    return null;
  }

  // State field(s) for senha widget.
  FocusNode? senhaFocusNode2;
  TextEditingController? senhaTextController2;
  late bool senhaVisibility2;
  String? Function(BuildContext, String?)? senhaTextController2Validator;
  // State field(s) for confirmarSenha widget.
  FocusNode? confirmarSenhaFocusNode2;
  TextEditingController? confirmarSenhaTextController2;
  late bool confirmarSenhaVisibility2;
  String? Function(BuildContext, String?)?
      confirmarSenhaTextController2Validator;
  // State field(s) for senha widget.
  FocusNode? senhaFocusNode3;
  TextEditingController? senhaTextController3;
  late bool senhaVisibility3;
  String? Function(BuildContext, String?)? senhaTextController3Validator;
  String? _senhaTextController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter new password is required';
    }

    if (val.length < 3) {
      return 'A senha precisa ter pelo menos 3 caracteres.';
    }
    if (val.length > 30) {
      return 'Sua senha ultrapassou os 30 caracteres';
    }

    return null;
  }

  // State field(s) for confirmarSenha widget.
  FocusNode? confirmarSenhaFocusNode3;
  TextEditingController? confirmarSenhaTextController3;
  late bool confirmarSenhaVisibility3;
  String? Function(BuildContext, String?)?
      confirmarSenhaTextController3Validator;
  String? _confirmarSenhaTextController3Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm new password is required';
    }

    if (val.length < 3) {
      return 'A senha precisa ter pelo menos 3 caracteres.';
    }
    if (val.length > 30) {
      return 'Sua senha ultrapassou os 30 caracteres';
    }

    return null;
  }

  // State field(s) for senha widget.
  FocusNode? senhaFocusNode4;
  TextEditingController? senhaTextController4;
  late bool senhaVisibility4;
  String? Function(BuildContext, String?)? senhaTextController4Validator;
  // State field(s) for confirmarSenha widget.
  FocusNode? confirmarSenhaFocusNode4;
  TextEditingController? confirmarSenhaTextController4;
  late bool confirmarSenhaVisibility4;
  String? Function(BuildContext, String?)?
      confirmarSenhaTextController4Validator;

  @override
  void initState(BuildContext context) {
    senhaVisibility1 = false;
    senhaTextController1Validator = _senhaTextController1Validator;
    confirmarSenhaVisibility1 = false;
    confirmarSenhaTextController1Validator =
        _confirmarSenhaTextController1Validator;
    senhaVisibility2 = false;
    confirmarSenhaVisibility2 = false;
    senhaVisibility3 = false;
    senhaTextController3Validator = _senhaTextController3Validator;
    confirmarSenhaVisibility3 = false;
    confirmarSenhaTextController3Validator =
        _confirmarSenhaTextController3Validator;
    senhaVisibility4 = false;
    confirmarSenhaVisibility4 = false;
  }

  @override
  void dispose() {
    senhaFocusNode1?.dispose();
    senhaTextController1?.dispose();

    confirmarSenhaFocusNode1?.dispose();
    confirmarSenhaTextController1?.dispose();

    senhaFocusNode2?.dispose();
    senhaTextController2?.dispose();

    confirmarSenhaFocusNode2?.dispose();
    confirmarSenhaTextController2?.dispose();

    senhaFocusNode3?.dispose();
    senhaTextController3?.dispose();

    confirmarSenhaFocusNode3?.dispose();
    confirmarSenhaTextController3?.dispose();

    senhaFocusNode4?.dispose();
    senhaTextController4?.dispose();

    confirmarSenhaFocusNode4?.dispose();
    confirmarSenhaTextController4?.dispose();
  }
}
