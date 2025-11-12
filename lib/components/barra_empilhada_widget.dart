import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'barra_empilhada_model.dart';
export 'barra_empilhada_model.dart';

class BarraEmpilhadaWidget extends StatefulWidget {
  const BarraEmpilhadaWidget({super.key});

  @override
  State<BarraEmpilhadaWidget> createState() => _BarraEmpilhadaWidgetState();
}

class _BarraEmpilhadaWidgetState extends State<BarraEmpilhadaWidget> {
  late BarraEmpilhadaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BarraEmpilhadaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
