import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/login/login_invalido/login_invalido_widget.dart';
import '/components/login/redefinir_senha/redefinir_senha_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  Local state fields for this page.

  bool erroLogin = false;

  bool flagErro = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for loginInvalido component.
  late LoginInvalidoModel loginInvalidoModel;
  // State field(s) for emailAddress_Login widget.
  FocusNode? emailAddressLoginFocusNode;
  TextEditingController? emailAddressLoginTextController;
  String? Function(BuildContext, String?)?
      emailAddressLoginTextControllerValidator;
  String? _emailAddressLoginTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'É obrigatório inserir o e-mail.';
    }

    if (val.length < 6) {
      return 'Email Incorreto!';
    }

    return null;
  }

  // State field(s) for password_Login widget.
  FocusNode? passwordLoginFocusNode;
  TextEditingController? passwordLoginTextController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginTextControllerValidator;
  String? _passwordLoginTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Senha é obrigatória.';
    }

    return null;
  }

  // Stores action output result for [Custom Action - loginUser] action in Button widget.
  String? loginStatus;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UserProfilesRow>? userProfile;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ClientsClientRow>? clientsClient;

  @override
  void initState(BuildContext context) {
    loginInvalidoModel = createModel(context, () => LoginInvalidoModel());
    emailAddressLoginTextControllerValidator =
        _emailAddressLoginTextControllerValidator;
    passwordLoginVisibility = false;
    passwordLoginTextControllerValidator =
        _passwordLoginTextControllerValidator;
  }

  @override
  void dispose() {
    loginInvalidoModel.dispose();
    emailAddressLoginFocusNode?.dispose();
    emailAddressLoginTextController?.dispose();

    passwordLoginFocusNode?.dispose();
    passwordLoginTextController?.dispose();
  }
}
