import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_invalido_model.dart';
export 'login_invalido_model.dart';

/// Create a component alert invalid login user
///
class LoginInvalidoWidget extends StatefulWidget {
  const LoginInvalidoWidget({super.key});

  @override
  State<LoginInvalidoWidget> createState() => _LoginInvalidoWidgetState();
}

class _LoginInvalidoWidgetState extends State<LoginInvalidoWidget> {
  late LoginInvalidoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginInvalidoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Container(
          width: 380.1,
          height: 88.75,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).error,
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: Color(0xFFFF5963),
              width: 2.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.warning_rounded,
                  color: Colors.white,
                  size: 30.0,
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login Inválido',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleSmallFamily,
                              color: Colors.white,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .titleSmallIsCustom,
                            ),
                      ),
                      Text(
                        'Verifique se suas credenciais estão corretas e tente novamente.',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: Colors.white,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ),
                    ].divide(SizedBox(height: 2.0)),
                  ),
                ),
              ].divide(SizedBox(width: 12.0)),
            ),
          ),
        ),
      ),
    );
  }
}
