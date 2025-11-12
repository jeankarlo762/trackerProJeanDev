import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'nova_senha_page_model.dart';
export 'nova_senha_page_model.dart';

class NovaSenhaPageWidget extends StatefulWidget {
  const NovaSenhaPageWidget({super.key});

  static String routeName = 'novaSenhaPage';
  static String routePath = 'novaSenhaPageMobile';

  @override
  State<NovaSenhaPageWidget> createState() => _NovaSenhaPageWidgetState();
}

class _NovaSenhaPageWidgetState extends State<NovaSenhaPageWidget> {
  late NovaSenhaPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NovaSenhaPageModel());

    _model.senhaTextController1 ??= TextEditingController();
    _model.senhaFocusNode1 ??= FocusNode();

    _model.confirmarSenhaTextController1 ??= TextEditingController();
    _model.confirmarSenhaFocusNode1 ??= FocusNode();

    _model.senhaTextController2 ??= TextEditingController();
    _model.senhaFocusNode2 ??= FocusNode();

    _model.confirmarSenhaTextController2 ??= TextEditingController();
    _model.confirmarSenhaFocusNode2 ??= FocusNode();

    _model.senhaTextController3 ??= TextEditingController();
    _model.senhaFocusNode3 ??= FocusNode();

    _model.confirmarSenhaTextController3 ??= TextEditingController();
    _model.confirmarSenhaFocusNode3 ??= FocusNode();

    _model.senhaTextController4 ??= TextEditingController();
    _model.senhaFocusNode4 ??= FocusNode();

    _model.confirmarSenhaTextController4 ??= TextEditingController();
    _model.confirmarSenhaFocusNode4 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                ))
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 0.766,
                    decoration: BoxDecoration(),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 12.0),
                                  child: Text(
                                    'Crie sua nova senha',
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .displaySmallFamily,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .displaySmallIsCustom,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 20.0),
                                  child: Text(
                                    'Sua nova senha deve ser diferente das senhas usadas anteriormente.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 15.0,
                                          letterSpacing: 0.0,
                                          lineHeight: 1.5,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 700.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).secondary,
                              ),
                            ),
                            child: Form(
                              key: _model.formKey2,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.996,
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                            ))
                                              Container(
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        TextFormField(
                                                          controller: _model
                                                              .senhaTextController1,
                                                          focusNode: _model
                                                              .senhaFocusNode1,
                                                          onChanged: (_) =>
                                                              EasyDebounce
                                                                  .debounce(
                                                            '_model.senhaTextController1',
                                                            Duration(
                                                                milliseconds:
                                                                    0),
                                                            () async {
                                                              if ((_model.senhaTextController1
                                                                              .text !=
                                                                          null &&
                                                                      _model.senhaTextController1
                                                                              .text !=
                                                                          '') &&
                                                                  ((String
                                                                      senha) {
                                                                    return RegExp(
                                                                            r'^(?=.*[A-Z]).+$')
                                                                        .hasMatch(
                                                                            senha);
                                                                  }(_model
                                                                      .senhaTextController1
                                                                      .text))) {
                                                                _model.validaMaiuscula =
                                                                    true;
                                                                safeSetState(
                                                                    () {});
                                                                _model.progress =
                                                                    0.15;
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.validaMaiuscula =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
                                                              }

                                                              if ((_model.senhaTextController1
                                                                              .text !=
                                                                          null &&
                                                                      _model.senhaTextController1
                                                                              .text !=
                                                                          '') &&
                                                                  ((String
                                                                      senha) {
                                                                    return RegExp(
                                                                            r'^.{8,}$')
                                                                        .hasMatch(
                                                                            senha);
                                                                  }(_model
                                                                      .senhaTextController1
                                                                      .text))) {
                                                                _model.validaCaractereMin =
                                                                    true;
                                                                safeSetState(
                                                                    () {});
                                                                _model.progress =
                                                                    _model.progress +
                                                                        0.15;
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.validaCaractereMin =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
                                                              }

                                                              if ((_model.senhaTextController1
                                                                              .text !=
                                                                          null &&
                                                                      _model.senhaTextController1
                                                                              .text !=
                                                                          '') &&
                                                                  ((String
                                                                      senha) {
                                                                    return RegExp(
                                                                            r'^(?=.*[a-z]).+$')
                                                                        .hasMatch(
                                                                            senha);
                                                                  }(_model
                                                                      .senhaTextController1
                                                                      .text))) {
                                                                _model.validaMinuscula =
                                                                    true;
                                                                safeSetState(
                                                                    () {});
                                                                _model.progress =
                                                                    _model.progress +
                                                                        0.15;
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.validaMinuscula =
                                                                    true;
                                                                safeSetState(
                                                                    () {});
                                                              }

                                                              if ((_model.senhaTextController1
                                                                              .text !=
                                                                          null &&
                                                                      _model.senhaTextController1
                                                                              .text !=
                                                                          '') &&
                                                                  ((String
                                                                      senha) {
                                                                    return RegExp(
                                                                            r'^(?=.*\d).+$')
                                                                        .hasMatch(
                                                                            senha);
                                                                  }(_model
                                                                      .senhaTextController1
                                                                      .text))) {
                                                                _model.validaNum =
                                                                    true;
                                                                safeSetState(
                                                                    () {});
                                                                _model.progress =
                                                                    _model.progress +
                                                                        0.15;
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.validaNum =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
                                                              }

                                                              if ((_model.senhaTextController1
                                                                              .text !=
                                                                          null &&
                                                                      _model.senhaTextController1
                                                                              .text !=
                                                                          '') &&
                                                                  ((String
                                                                      senha) {
                                                                    return RegExp(
                                                                            r'^(?=.*[!@#\$%\^&\*\(\)_\+\-=\[\]{};:"\\|,.<>\/?]).+$')
                                                                        .hasMatch(
                                                                            senha);
                                                                  }(_model
                                                                      .senhaTextController1
                                                                      .text))) {
                                                                _model.validaEspecial =
                                                                    true;
                                                                safeSetState(
                                                                    () {});
                                                                _model.progress =
                                                                    _model.progress +
                                                                        0.15;
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.validaEspecial =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
                                                              }

                                                              if ((_model.senhaTextController1
                                                                              .text !=
                                                                          null &&
                                                                      _model.senhaTextController1
                                                                              .text !=
                                                                          '') &&
                                                                  ((String
                                                                      senha) {
                                                                    return RegExp(
                                                                            r'^.{1,25}$')
                                                                        .hasMatch(
                                                                            senha);
                                                                  }(_model
                                                                      .senhaTextController1
                                                                      .text))) {
                                                                _model.validaCaractereMax =
                                                                    true;
                                                                safeSetState(
                                                                    () {});
                                                                _model.progress =
                                                                    _model.progress +
                                                                        0.25;
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.validaCaractereMax =
                                                                    true;
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                          ),
                                                          autofocus: false,
                                                          textInputAction:
                                                              TextInputAction
                                                                  .next,
                                                          obscureText: !_model
                                                              .senhaVisibility1,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText:
                                                                'Nova Senha',
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            filled: true,
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            contentPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        16.0,
                                                                        16.0,
                                                                        16.0),
                                                            suffixIcon: InkWell(
                                                              onTap: () =>
                                                                  safeSetState(
                                                                () => _model
                                                                        .senhaVisibility1 =
                                                                    !_model
                                                                        .senhaVisibility1,
                                                              ),
                                                              focusNode: FocusNode(
                                                                  skipTraversal:
                                                                      true),
                                                              child: Icon(
                                                                _model.senhaVisibility1
                                                                    ? Icons
                                                                        .visibility_outlined
                                                                    : Icons
                                                                        .visibility_off_outlined,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 20.0,
                                                              ),
                                                            ),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                          cursorColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          validator: _model
                                                              .senhaTextController1Validator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            height: 30.0,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child:
                                                                LinearPercentIndicator(
                                                              percent: _model
                                                                  .progress,
                                                              lineHeight: 5.0,
                                                              animation: true,
                                                              animateFromLastPercent:
                                                                  true,
                                                              progressColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              backgroundColor:
                                                                  Color(
                                                                      0x5D616161),
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.0),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Builder(
                                                                builder:
                                                                    (context) {
                                                                  if (_model
                                                                          .validaMaiuscula ==
                                                                      false) {
                                                                    return Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Icon(
                                                                          Icons
                                                                              .radio_button_off_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                        Text(
                                                                          'Possui letra maiuscula',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.roboto(
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 10.0)),
                                                                    );
                                                                  } else {
                                                                    return Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Icon(
                                                                          Icons
                                                                              .check_circle_sharp,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                        Text(
                                                                          'Possui letra maiuscula',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.roboto(
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 10.0)),
                                                                    );
                                                                  }
                                                                },
                                                              ),
                                                              Builder(
                                                                builder:
                                                                    (context) {
                                                                  if (_model
                                                                          .validaMinuscula ==
                                                                      false) {
                                                                    return Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Icon(
                                                                          Icons
                                                                              .radio_button_off_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                        Text(
                                                                          'Possui letra minuscula',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.roboto(
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 10.0)),
                                                                    );
                                                                  } else {
                                                                    return Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Icon(
                                                                          Icons
                                                                              .check_circle_sharp,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                        Text(
                                                                          'Possui letra minuscula',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.roboto(
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 10.0)),
                                                                    );
                                                                  }
                                                                },
                                                              ),
                                                              Builder(
                                                                builder:
                                                                    (context) {
                                                                  if (_model
                                                                          .validaCaractereMin ==
                                                                      false) {
                                                                    return Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Icon(
                                                                          Icons
                                                                              .radio_button_off_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                        Text(
                                                                          'Possuir no mínimo 8 caracteres',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.roboto(
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 10.0)),
                                                                    );
                                                                  } else {
                                                                    return Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Icon(
                                                                          Icons
                                                                              .check_circle_sharp,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                        Text(
                                                                          'Possuir no mínimo 8 caracteres',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.roboto(
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 10.0)),
                                                                    );
                                                                  }
                                                                },
                                                              ),
                                                              Builder(
                                                                builder:
                                                                    (context) {
                                                                  if (_model
                                                                          .validaCaractereMax ==
                                                                      false) {
                                                                    return Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Icon(
                                                                          Icons
                                                                              .radio_button_off_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                        Text(
                                                                          'Possuir no máximo 25 caracteres',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.roboto(
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 10.0)),
                                                                    );
                                                                  } else {
                                                                    return Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Icon(
                                                                          Icons
                                                                              .check_circle_sharp,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                        Text(
                                                                          'Possuir no máximo 25 caracteres',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.roboto(
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 10.0)),
                                                                    );
                                                                  }
                                                                },
                                                              ),
                                                              Builder(
                                                                builder:
                                                                    (context) {
                                                                  if (_model
                                                                          .validaNum ==
                                                                      false) {
                                                                    return Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Icon(
                                                                          Icons
                                                                              .radio_button_off_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                        Text(
                                                                          'Possuir número',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.roboto(
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 10.0)),
                                                                    );
                                                                  } else {
                                                                    return Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Icon(
                                                                          Icons
                                                                              .check_circle_sharp,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                        Text(
                                                                          'Possuir número',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.roboto(
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 10.0)),
                                                                    );
                                                                  }
                                                                },
                                                              ),
                                                              Builder(
                                                                builder:
                                                                    (context) {
                                                                  if (_model
                                                                          .validaEspecial ==
                                                                      false) {
                                                                    return Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Icon(
                                                                          Icons
                                                                              .radio_button_off_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                        Text(
                                                                          'Possuir caractere especial ( @, #, \$, % ...)',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.roboto(
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 10.0)),
                                                                    );
                                                                  } else {
                                                                    return Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Icon(
                                                                          Icons
                                                                              .check_circle_sharp,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                        Text(
                                                                          'Possuir caractere especial ( @, #, \$, % ...)',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.roboto(
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 10.0)),
                                                                    );
                                                                  }
                                                                },
                                                              ),
                                                            ].divide(SizedBox(
                                                                height: 5.0)),
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 5.0)),
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        TextFormField(
                                                          controller: _model
                                                              .confirmarSenhaTextController1,
                                                          focusNode: _model
                                                              .confirmarSenhaFocusNode1,
                                                          onChanged: (_) =>
                                                              EasyDebounce
                                                                  .debounce(
                                                            '_model.confirmarSenhaTextController1',
                                                            Duration(
                                                                milliseconds:
                                                                    2000),
                                                            () async {
                                                              if (_model
                                                                      .senhaTextController1
                                                                      .text ==
                                                                  _model
                                                                      .confirmarSenhaTextController1
                                                                      .text) {
                                                                _model.senhaIgual =
                                                                    true;
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.senhaIgual =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                          ),
                                                          autofocus: false,
                                                          textInputAction:
                                                              TextInputAction
                                                                  .done,
                                                          obscureText: !_model
                                                              .confirmarSenhaVisibility1,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText:
                                                                'Confirmar Senha',
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            filled: true,
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            contentPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        16.0,
                                                                        16.0,
                                                                        16.0),
                                                            suffixIcon: InkWell(
                                                              onTap: () =>
                                                                  safeSetState(
                                                                () => _model
                                                                        .confirmarSenhaVisibility1 =
                                                                    !_model
                                                                        .confirmarSenhaVisibility1,
                                                              ),
                                                              focusNode: FocusNode(
                                                                  skipTraversal:
                                                                      true),
                                                              child: Icon(
                                                                _model.confirmarSenhaVisibility1
                                                                    ? Icons
                                                                        .visibility_outlined
                                                                    : Icons
                                                                        .visibility_off_outlined,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 20.0,
                                                              ),
                                                            ),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                          cursorColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          validator: _model
                                                              .confirmarSenhaTextController1Validator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                        Builder(
                                                          builder: (context) {
                                                            if (_model
                                                                    .senhaIgual ==
                                                                false) {
                                                              return Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .radio_button_off_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    size: 20.0,
                                                                  ),
                                                                  Text(
                                                                    'As senhas precisam ser idênticas.',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.roboto(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        10.0)),
                                                              );
                                                            } else {
                                                              return Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .check_circle_sharp,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 20.0,
                                                                  ),
                                                                  Text(
                                                                    'As senhas precisam ser idênticas.',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.roboto(
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        10.0)),
                                                              );
                                                            }
                                                          },
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 15.0)),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 15.0)),
                                                ),
                                              ),
                                            if (responsiveVisibility(
                                              context: context,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Expanded(
                                                child: Container(
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          1.0,
                                                  decoration: BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          TextFormField(
                                                            controller: _model
                                                                .senhaTextController2,
                                                            focusNode: _model
                                                                .senhaFocusNode2,
                                                            onChanged: (_) =>
                                                                EasyDebounce
                                                                    .debounce(
                                                              '_model.senhaTextController2',
                                                              Duration(
                                                                  milliseconds:
                                                                      0),
                                                              () async {
                                                                if ((_model.senhaTextController2.text !=
                                                                            null &&
                                                                        _model.senhaTextController2.text !=
                                                                            '') &&
                                                                    ((String
                                                                        senha) {
                                                                      return RegExp(
                                                                              r'^(?=.*[A-Z]).+$')
                                                                          .hasMatch(
                                                                              senha);
                                                                    }(_model
                                                                        .senhaTextController2
                                                                        .text))) {
                                                                  _model.validaMaiuscula =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.progress =
                                                                      0.15;
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  _model.validaMaiuscula =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                }

                                                                if ((_model.senhaTextController2.text !=
                                                                            null &&
                                                                        _model.senhaTextController2.text !=
                                                                            '') &&
                                                                    ((String
                                                                        senha) {
                                                                      return RegExp(
                                                                              r'^.{8,}$')
                                                                          .hasMatch(
                                                                              senha);
                                                                    }(_model
                                                                        .senhaTextController2
                                                                        .text))) {
                                                                  _model.validaCaractereMin =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.progress =
                                                                      _model.progress +
                                                                          0.15;
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  _model.validaCaractereMin =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                }

                                                                if ((_model.senhaTextController2.text !=
                                                                            null &&
                                                                        _model.senhaTextController2.text !=
                                                                            '') &&
                                                                    ((String
                                                                        senha) {
                                                                      return RegExp(
                                                                              r'^(?=.*[a-z]).+$')
                                                                          .hasMatch(
                                                                              senha);
                                                                    }(_model
                                                                        .senhaTextController2
                                                                        .text))) {
                                                                  _model.validaMinuscula =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.progress =
                                                                      _model.progress +
                                                                          0.15;
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  _model.validaMinuscula =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                }

                                                                if ((_model.senhaTextController2.text !=
                                                                            null &&
                                                                        _model.senhaTextController2.text !=
                                                                            '') &&
                                                                    ((String
                                                                        senha) {
                                                                      return RegExp(
                                                                              r'^(?=.*\d).+$')
                                                                          .hasMatch(
                                                                              senha);
                                                                    }(_model
                                                                        .senhaTextController2
                                                                        .text))) {
                                                                  _model.validaNum =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.progress =
                                                                      _model.progress +
                                                                          0.15;
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  _model.validaNum =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                }

                                                                if ((_model.senhaTextController2.text !=
                                                                            null &&
                                                                        _model.senhaTextController2.text !=
                                                                            '') &&
                                                                    ((String
                                                                        senha) {
                                                                      return RegExp(
                                                                              r'^(?=.*[!@#\$%\^&\*\(\)_\+\-=\[\]{};:"\\|,.<>\/?]).+$')
                                                                          .hasMatch(
                                                                              senha);
                                                                    }(_model
                                                                        .senhaTextController2
                                                                        .text))) {
                                                                  _model.validaEspecial =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.progress =
                                                                      _model.progress +
                                                                          0.15;
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  _model.validaEspecial =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                }

                                                                if ((_model.senhaTextController2.text !=
                                                                            null &&
                                                                        _model.senhaTextController2.text !=
                                                                            '') &&
                                                                    ((String
                                                                        senha) {
                                                                      return RegExp(
                                                                              r'^.{1,25}$')
                                                                          .hasMatch(
                                                                              senha);
                                                                    }(_model
                                                                        .senhaTextController2
                                                                        .text))) {
                                                                  _model.validaCaractereMax =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.progress =
                                                                      _model.progress +
                                                                          0.25;
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  _model.validaCaractereMax =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                }
                                                              },
                                                            ),
                                                            autofocus: false,
                                                            textInputAction:
                                                                TextInputAction
                                                                    .next,
                                                            obscureText: !_model
                                                                .senhaVisibility2,
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  'Nova Senha',
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              filled: true,
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              contentPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          16.0,
                                                                          16.0,
                                                                          16.0),
                                                              suffixIcon:
                                                                  InkWell(
                                                                onTap: () =>
                                                                    safeSetState(
                                                                  () => _model
                                                                          .senhaVisibility2 =
                                                                      !_model
                                                                          .senhaVisibility2,
                                                                ),
                                                                focusNode: FocusNode(
                                                                    skipTraversal:
                                                                        true),
                                                                child: Icon(
                                                                  _model.senhaVisibility2
                                                                      ? Icons
                                                                          .visibility_outlined
                                                                      : Icons
                                                                          .visibility_off_outlined,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 20.0,
                                                                ),
                                                              ),
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                            cursorColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            validator: _model
                                                                .senhaTextController2Validator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                          LinearPercentIndicator(
                                                            percent:
                                                                _model.progress,
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.5,
                                                            lineHeight: 10.0,
                                                            animation: true,
                                                            animateFromLastPercent:
                                                                true,
                                                            progressColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            backgroundColor:
                                                                Color(
                                                                    0x5D616161),
                                                            barRadius:
                                                                Radius.circular(
                                                                    10.0),
                                                            padding:
                                                                EdgeInsets.zero,
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 10.0)),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.992,
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                0.18,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    if (_model
                                                                            .validaMaiuscula ==
                                                                        false) {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.radio_button_off_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possui letra maiuscula',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    } else {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.check_circle_sharp,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possui letra maiuscula',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    }
                                                                  },
                                                                ),
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    if (_model
                                                                            .validaMinuscula ==
                                                                        false) {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.radio_button_off_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possui letra minuscula',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    } else {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.check_circle_sharp,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possui letra minuscula',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    }
                                                                  },
                                                                ),
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    if (_model
                                                                            .validaCaractereMin ==
                                                                        false) {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.radio_button_off_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possuir no mínimo 8 caracteres',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    } else {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.check_circle_sharp,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possuir no mínimo 8 caracteres',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    }
                                                                  },
                                                                ),
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    if (_model
                                                                            .validaCaractereMax ==
                                                                        false) {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.radio_button_off_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possuir no máximo 25 caracteres',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    } else {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.check_circle_sharp,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possuir no máximo 25 caracteres',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    }
                                                                  },
                                                                ),
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    if (_model
                                                                            .validaNum ==
                                                                        false) {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.radio_button_off_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possuir número',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    } else {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.check_circle_sharp,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possuir número',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    }
                                                                  },
                                                                ),
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    if (_model
                                                                            .validaEspecial ==
                                                                        false) {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.radio_button_off_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possuir caractere especial ( @, #, \$, % ...)',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    } else {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.check_circle_sharp,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possuir caractere especial ( @, #, \$, % ...)',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    }
                                                                  },
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height: 5.0)),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          TextFormField(
                                                            controller: _model
                                                                .confirmarSenhaTextController2,
                                                            focusNode: _model
                                                                .confirmarSenhaFocusNode2,
                                                            onChanged: (_) =>
                                                                EasyDebounce
                                                                    .debounce(
                                                              '_model.confirmarSenhaTextController2',
                                                              Duration(
                                                                  milliseconds:
                                                                      2000),
                                                              () async {
                                                                if (_model
                                                                        .senhaTextController2
                                                                        .text ==
                                                                    _model
                                                                        .confirmarSenhaTextController2
                                                                        .text) {
                                                                  _model.senhaIgual =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  _model.senhaIgual =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                }
                                                              },
                                                            ),
                                                            autofocus: false,
                                                            textInputAction:
                                                                TextInputAction
                                                                    .done,
                                                            obscureText: !_model
                                                                .confirmarSenhaVisibility2,
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  'Confirmar Senha',
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              filled: true,
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              contentPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          16.0,
                                                                          16.0,
                                                                          16.0),
                                                              suffixIcon:
                                                                  InkWell(
                                                                onTap: () =>
                                                                    safeSetState(
                                                                  () => _model
                                                                          .confirmarSenhaVisibility2 =
                                                                      !_model
                                                                          .confirmarSenhaVisibility2,
                                                                ),
                                                                focusNode: FocusNode(
                                                                    skipTraversal:
                                                                        true),
                                                                child: Icon(
                                                                  _model.confirmarSenhaVisibility2
                                                                      ? Icons
                                                                          .visibility_outlined
                                                                      : Icons
                                                                          .visibility_off_outlined,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 20.0,
                                                                ),
                                                              ),
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                            cursorColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            validator: _model
                                                                .confirmarSenhaTextController2Validator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                          Builder(
                                                            builder: (context) {
                                                              if (_model
                                                                      .senhaIgual ==
                                                                  false) {
                                                                return Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .radio_button_off_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                    Text(
                                                                      'As senhas precisam ser idênticas.',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.roboto(
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          10.0)),
                                                                );
                                                              } else {
                                                                return Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .check_circle_sharp,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                    Text(
                                                                      'As senhas precisam ser idênticas.',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.roboto(
                                                                              fontWeight: FontWeight.w500,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          10.0)),
                                                                );
                                                              }
                                                            },
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 10.0)),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 10.0)),
                                                  ),
                                                ),
                                              ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 0.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.05,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                ),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    await authManager
                                                        .updatePassword(
                                                      newPassword: _model
                                                          .senhaTextController1
                                                          .text,
                                                      context: context,
                                                    );
                                                    safeSetState(() {});

                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'Senha alterada com sucesso',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                          ),
                                                        ),
                                                        duration: Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                      ),
                                                    );

                                                    context.pushNamedAuth(
                                                      LoginPageWidget.routeName,
                                                      context.mounted,
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .fade,
                                                          duration: Duration(
                                                              milliseconds: 0),
                                                        ),
                                                      },
                                                    );
                                                  },
                                                  text: 'Redefinir Senha',
                                                  options: FFButtonOptions(
                                                    width: double.infinity,
                                                    height: 23.5,
                                                    padding:
                                                        EdgeInsets.all(0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleMediumIsCustom,
                                                        ),
                                                    elevation: 0.0,
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 0.938,
                    decoration: BoxDecoration(),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: Text(
                              'Crie sua nova senha',
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .displaySmallFamily,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .displaySmallIsCustom,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 20.0),
                            child: Text(
                              'Sua nova senha deve ser diferente das senhas usadas anteriormente.',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    lineHeight: 1.5,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.919,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).secondary,
                                ),
                              ),
                              child: Form(
                                key: _model.formKey1,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.05,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.511,
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                            ))
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          TextFormField(
                                                            controller: _model
                                                                .senhaTextController3,
                                                            focusNode: _model
                                                                .senhaFocusNode3,
                                                            onChanged: (_) =>
                                                                EasyDebounce
                                                                    .debounce(
                                                              '_model.senhaTextController3',
                                                              Duration(
                                                                  milliseconds:
                                                                      0),
                                                              () async {
                                                                if ((_model.senhaTextController3.text !=
                                                                            null &&
                                                                        _model.senhaTextController3.text !=
                                                                            '') &&
                                                                    ((String
                                                                        senha) {
                                                                      return RegExp(
                                                                              r'^(?=.*[A-Z]).+$')
                                                                          .hasMatch(
                                                                              senha);
                                                                    }(_model
                                                                        .senhaTextController3
                                                                        .text))) {
                                                                  _model.validaMaiuscula =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.progress =
                                                                      0.15;
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  _model.validaMaiuscula =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                }

                                                                if ((_model.senhaTextController3.text !=
                                                                            null &&
                                                                        _model.senhaTextController3.text !=
                                                                            '') &&
                                                                    ((String
                                                                        senha) {
                                                                      return RegExp(
                                                                              r'^.{8,}$')
                                                                          .hasMatch(
                                                                              senha);
                                                                    }(_model
                                                                        .senhaTextController3
                                                                        .text))) {
                                                                  _model.validaCaractereMin =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.progress =
                                                                      _model.progress +
                                                                          0.15;
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  _model.validaCaractereMin =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                }

                                                                if ((_model.senhaTextController3.text !=
                                                                            null &&
                                                                        _model.senhaTextController3.text !=
                                                                            '') &&
                                                                    ((String
                                                                        senha) {
                                                                      return RegExp(
                                                                              r'^(?=.*[a-z]).+$')
                                                                          .hasMatch(
                                                                              senha);
                                                                    }(_model
                                                                        .senhaTextController3
                                                                        .text))) {
                                                                  _model.validaMinuscula =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.progress =
                                                                      _model.progress +
                                                                          0.15;
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  _model.validaMinuscula =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                }

                                                                if ((_model.senhaTextController3.text !=
                                                                            null &&
                                                                        _model.senhaTextController3.text !=
                                                                            '') &&
                                                                    ((String
                                                                        senha) {
                                                                      return RegExp(
                                                                              r'^(?=.*\d).+$')
                                                                          .hasMatch(
                                                                              senha);
                                                                    }(_model
                                                                        .senhaTextController3
                                                                        .text))) {
                                                                  _model.validaNum =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.progress =
                                                                      _model.progress +
                                                                          0.15;
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  _model.validaNum =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                }

                                                                if ((_model.senhaTextController3.text !=
                                                                            null &&
                                                                        _model.senhaTextController3.text !=
                                                                            '') &&
                                                                    ((String
                                                                        senha) {
                                                                      return RegExp(
                                                                              r'^(?=.*[!@#\$%\^&\*\(\)_\+\-=\[\]{};:"\\|,.<>\/?]).+$')
                                                                          .hasMatch(
                                                                              senha);
                                                                    }(_model
                                                                        .senhaTextController3
                                                                        .text))) {
                                                                  _model.validaEspecial =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.progress =
                                                                      _model.progress +
                                                                          0.15;
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  _model.validaEspecial =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                }

                                                                if ((_model.senhaTextController3.text !=
                                                                            null &&
                                                                        _model.senhaTextController3.text !=
                                                                            '') &&
                                                                    ((String
                                                                        senha) {
                                                                      return RegExp(
                                                                              r'^.{1,25}$')
                                                                          .hasMatch(
                                                                              senha);
                                                                    }(_model
                                                                        .senhaTextController3
                                                                        .text))) {
                                                                  _model.validaCaractereMax =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.progress =
                                                                      _model.progress +
                                                                          0.25;
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  _model.validaCaractereMax =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                }
                                                              },
                                                            ),
                                                            autofocus: false,
                                                            textInputAction:
                                                                TextInputAction
                                                                    .next,
                                                            obscureText: !_model
                                                                .senhaVisibility3,
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  'Nova Senha',
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              filled: true,
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              contentPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          16.0,
                                                                          16.0,
                                                                          16.0),
                                                              suffixIcon:
                                                                  InkWell(
                                                                onTap: () =>
                                                                    safeSetState(
                                                                  () => _model
                                                                          .senhaVisibility3 =
                                                                      !_model
                                                                          .senhaVisibility3,
                                                                ),
                                                                focusNode: FocusNode(
                                                                    skipTraversal:
                                                                        true),
                                                                child: Icon(
                                                                  _model.senhaVisibility3
                                                                      ? Icons
                                                                          .visibility_outlined
                                                                      : Icons
                                                                          .visibility_off_outlined,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 20.0,
                                                                ),
                                                              ),
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                            cursorColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            validator: _model
                                                                .senhaTextController3Validator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                          LinearPercentIndicator(
                                                            percent:
                                                                _model.progress,
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.8,
                                                            lineHeight: 5.0,
                                                            animation: true,
                                                            animateFromLastPercent:
                                                                true,
                                                            progressColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            backgroundColor:
                                                                Color(
                                                                    0x5D616161),
                                                            barRadius:
                                                                Radius.circular(
                                                                    10.0),
                                                            padding:
                                                                EdgeInsets.zero,
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 10.0)),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.501,
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                0.18,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    if (_model
                                                                            .validaMaiuscula ==
                                                                        false) {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.radio_button_off_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possui letra maiuscula',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    } else {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.check_circle_sharp,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possui letra maiuscula',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    }
                                                                  },
                                                                ),
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    if (_model
                                                                            .validaMinuscula ==
                                                                        false) {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.radio_button_off_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possui letra minuscula',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    } else {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.check_circle_sharp,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possui letra minuscula',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    }
                                                                  },
                                                                ),
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    if (_model
                                                                            .validaCaractereMin ==
                                                                        false) {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.radio_button_off_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possuir no mínimo 8 caracteres',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    } else {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.check_circle_sharp,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possuir no mínimo 8 caracteres',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    }
                                                                  },
                                                                ),
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    if (_model
                                                                            .validaCaractereMax ==
                                                                        false) {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.radio_button_off_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possuir no máximo 25 caracteres',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    } else {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.check_circle_sharp,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possuir no máximo 25 caracteres',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    }
                                                                  },
                                                                ),
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    if (_model
                                                                            .validaNum ==
                                                                        false) {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.radio_button_off_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possuir número',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    } else {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.check_circle_sharp,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possuir número',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    }
                                                                  },
                                                                ),
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    if (_model
                                                                            .validaEspecial ==
                                                                        false) {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.radio_button_off_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possuir caractere especial ( @, #, \$, % ...)',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    } else {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.check_circle_sharp,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possuir caractere especial ( @, #, \$, % ...)',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    }
                                                                  },
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height: 5.0)),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          TextFormField(
                                                            controller: _model
                                                                .confirmarSenhaTextController3,
                                                            focusNode: _model
                                                                .confirmarSenhaFocusNode3,
                                                            onChanged: (_) =>
                                                                EasyDebounce
                                                                    .debounce(
                                                              '_model.confirmarSenhaTextController3',
                                                              Duration(
                                                                  milliseconds:
                                                                      2000),
                                                              () async {
                                                                if (_model
                                                                        .senhaTextController3
                                                                        .text ==
                                                                    _model
                                                                        .confirmarSenhaTextController3
                                                                        .text) {
                                                                  _model.senhaIgual =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  _model.senhaIgual =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                }
                                                              },
                                                            ),
                                                            autofocus: false,
                                                            textInputAction:
                                                                TextInputAction
                                                                    .done,
                                                            obscureText: !_model
                                                                .confirmarSenhaVisibility3,
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  'Confirmar Senha',
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              filled: true,
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              contentPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          16.0,
                                                                          16.0,
                                                                          16.0),
                                                              suffixIcon:
                                                                  InkWell(
                                                                onTap: () =>
                                                                    safeSetState(
                                                                  () => _model
                                                                          .confirmarSenhaVisibility3 =
                                                                      !_model
                                                                          .confirmarSenhaVisibility3,
                                                                ),
                                                                focusNode: FocusNode(
                                                                    skipTraversal:
                                                                        true),
                                                                child: Icon(
                                                                  _model.confirmarSenhaVisibility3
                                                                      ? Icons
                                                                          .visibility_outlined
                                                                      : Icons
                                                                          .visibility_off_outlined,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 20.0,
                                                                ),
                                                              ),
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                            cursorColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            validator: _model
                                                                .confirmarSenhaTextController3Validator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                          Builder(
                                                            builder: (context) {
                                                              if (_model
                                                                      .senhaIgual ==
                                                                  false) {
                                                                return Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .radio_button_off_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                    Text(
                                                                      'As senhas precisam ser idênticas.',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.roboto(
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          10.0)),
                                                                );
                                                              } else {
                                                                return Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .check_circle_sharp,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                    Text(
                                                                      'As senhas precisam ser idênticas.',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.roboto(
                                                                              fontWeight: FontWeight.w500,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          10.0)),
                                                                );
                                                              }
                                                            },
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 10.0)),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 10.0)),
                                                  ),
                                                ),
                                              ),
                                            if (responsiveVisibility(
                                              context: context,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Expanded(
                                                child: Container(
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          1.0,
                                                  decoration: BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          TextFormField(
                                                            controller: _model
                                                                .senhaTextController4,
                                                            focusNode: _model
                                                                .senhaFocusNode4,
                                                            onChanged: (_) =>
                                                                EasyDebounce
                                                                    .debounce(
                                                              '_model.senhaTextController4',
                                                              Duration(
                                                                  milliseconds:
                                                                      0),
                                                              () async {
                                                                if ((_model.senhaTextController4.text !=
                                                                            null &&
                                                                        _model.senhaTextController4.text !=
                                                                            '') &&
                                                                    ((String
                                                                        senha) {
                                                                      return RegExp(
                                                                              r'^(?=.*[A-Z]).+$')
                                                                          .hasMatch(
                                                                              senha);
                                                                    }(_model
                                                                        .senhaTextController4
                                                                        .text))) {
                                                                  _model.validaMaiuscula =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.progress =
                                                                      0.15;
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  _model.validaMaiuscula =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                }

                                                                if ((_model.senhaTextController4.text !=
                                                                            null &&
                                                                        _model.senhaTextController4.text !=
                                                                            '') &&
                                                                    ((String
                                                                        senha) {
                                                                      return RegExp(
                                                                              r'^.{8,}$')
                                                                          .hasMatch(
                                                                              senha);
                                                                    }(_model
                                                                        .senhaTextController4
                                                                        .text))) {
                                                                  _model.validaCaractereMin =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.progress =
                                                                      _model.progress +
                                                                          0.15;
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  _model.validaCaractereMin =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                }

                                                                if ((_model.senhaTextController4.text !=
                                                                            null &&
                                                                        _model.senhaTextController4.text !=
                                                                            '') &&
                                                                    ((String
                                                                        senha) {
                                                                      return RegExp(
                                                                              r'^(?=.*[a-z]).+$')
                                                                          .hasMatch(
                                                                              senha);
                                                                    }(_model
                                                                        .senhaTextController4
                                                                        .text))) {
                                                                  _model.validaMinuscula =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.progress =
                                                                      _model.progress +
                                                                          0.15;
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  _model.validaMinuscula =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                }

                                                                if ((_model.senhaTextController4.text !=
                                                                            null &&
                                                                        _model.senhaTextController4.text !=
                                                                            '') &&
                                                                    ((String
                                                                        senha) {
                                                                      return RegExp(
                                                                              r'^(?=.*\d).+$')
                                                                          .hasMatch(
                                                                              senha);
                                                                    }(_model
                                                                        .senhaTextController4
                                                                        .text))) {
                                                                  _model.validaNum =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.progress =
                                                                      _model.progress +
                                                                          0.15;
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  _model.validaNum =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                }

                                                                if ((_model.senhaTextController4.text !=
                                                                            null &&
                                                                        _model.senhaTextController4.text !=
                                                                            '') &&
                                                                    ((String
                                                                        senha) {
                                                                      return RegExp(
                                                                              r'^(?=.*[!@#\$%\^&\*\(\)_\+\-=\[\]{};:"\\|,.<>\/?]).+$')
                                                                          .hasMatch(
                                                                              senha);
                                                                    }(_model
                                                                        .senhaTextController4
                                                                        .text))) {
                                                                  _model.validaEspecial =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.progress =
                                                                      _model.progress +
                                                                          0.15;
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  _model.validaEspecial =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                }

                                                                if ((_model.senhaTextController4.text !=
                                                                            null &&
                                                                        _model.senhaTextController4.text !=
                                                                            '') &&
                                                                    ((String
                                                                        senha) {
                                                                      return RegExp(
                                                                              r'^.{1,25}$')
                                                                          .hasMatch(
                                                                              senha);
                                                                    }(_model
                                                                        .senhaTextController4
                                                                        .text))) {
                                                                  _model.validaCaractereMax =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.progress =
                                                                      _model.progress +
                                                                          0.25;
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  _model.validaCaractereMax =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                }
                                                              },
                                                            ),
                                                            autofocus: false,
                                                            textInputAction:
                                                                TextInputAction
                                                                    .next,
                                                            obscureText: !_model
                                                                .senhaVisibility4,
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  'Nova Senha',
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              filled: true,
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              contentPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          16.0,
                                                                          16.0,
                                                                          16.0),
                                                              suffixIcon:
                                                                  InkWell(
                                                                onTap: () =>
                                                                    safeSetState(
                                                                  () => _model
                                                                          .senhaVisibility4 =
                                                                      !_model
                                                                          .senhaVisibility4,
                                                                ),
                                                                focusNode: FocusNode(
                                                                    skipTraversal:
                                                                        true),
                                                                child: Icon(
                                                                  _model.senhaVisibility4
                                                                      ? Icons
                                                                          .visibility_outlined
                                                                      : Icons
                                                                          .visibility_off_outlined,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 20.0,
                                                                ),
                                                              ),
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                            cursorColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            validator: _model
                                                                .senhaTextController4Validator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                          LinearPercentIndicator(
                                                            percent:
                                                                _model.progress,
                                                            width: 320.0,
                                                            lineHeight: 10.0,
                                                            animation: true,
                                                            animateFromLastPercent:
                                                                true,
                                                            progressColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            backgroundColor:
                                                                Color(
                                                                    0x5D616161),
                                                            barRadius:
                                                                Radius.circular(
                                                                    10.0),
                                                            padding:
                                                                EdgeInsets.zero,
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 10.0)),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.02,
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                0.18,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    if (_model
                                                                            .validaMaiuscula ==
                                                                        false) {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.radio_button_off_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possui letra maiuscula',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    } else {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.check_circle_sharp,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possui letra maiuscula',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    }
                                                                  },
                                                                ),
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    if (_model
                                                                            .validaMinuscula ==
                                                                        false) {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.radio_button_off_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possui letra minuscula',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    } else {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.check_circle_sharp,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possui letra minuscula',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    }
                                                                  },
                                                                ),
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    if (_model
                                                                            .validaCaractereMin ==
                                                                        false) {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.radio_button_off_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possuir no mínimo 8 caracteres',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    } else {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.check_circle_sharp,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possuir no mínimo 8 caracteres',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    }
                                                                  },
                                                                ),
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    if (_model
                                                                            .validaCaractereMax ==
                                                                        false) {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.radio_button_off_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possuir no máximo 25 caracteres',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    } else {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.check_circle_sharp,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possuir no máximo 25 caracteres',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    }
                                                                  },
                                                                ),
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    if (_model
                                                                            .validaNum ==
                                                                        false) {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.radio_button_off_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possuir número',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    } else {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.check_circle_sharp,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possuir número',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    }
                                                                  },
                                                                ),
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    if (_model
                                                                            .validaEspecial ==
                                                                        false) {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.radio_button_off_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possuir caractere especial ( @, #, \$, % ...)',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    } else {
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.check_circle_sharp,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Text(
                                                                            'Possuir caractere especial ( @, #, \$, % ...)',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.roboto(
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 10.0)),
                                                                      );
                                                                    }
                                                                  },
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height: 5.0)),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          TextFormField(
                                                            controller: _model
                                                                .confirmarSenhaTextController4,
                                                            focusNode: _model
                                                                .confirmarSenhaFocusNode4,
                                                            onChanged: (_) =>
                                                                EasyDebounce
                                                                    .debounce(
                                                              '_model.confirmarSenhaTextController4',
                                                              Duration(
                                                                  milliseconds:
                                                                      2000),
                                                              () async {
                                                                if (_model
                                                                        .senhaTextController4
                                                                        .text ==
                                                                    _model
                                                                        .confirmarSenhaTextController4
                                                                        .text) {
                                                                  _model.senhaIgual =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  _model.senhaIgual =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                }
                                                              },
                                                            ),
                                                            autofocus: false,
                                                            textInputAction:
                                                                TextInputAction
                                                                    .done,
                                                            obscureText: !_model
                                                                .confirmarSenhaVisibility4,
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  'Confirmar Senha',
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              filled: true,
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              contentPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          16.0,
                                                                          16.0,
                                                                          16.0),
                                                              suffixIcon:
                                                                  InkWell(
                                                                onTap: () =>
                                                                    safeSetState(
                                                                  () => _model
                                                                          .confirmarSenhaVisibility4 =
                                                                      !_model
                                                                          .confirmarSenhaVisibility4,
                                                                ),
                                                                focusNode: FocusNode(
                                                                    skipTraversal:
                                                                        true),
                                                                child: Icon(
                                                                  _model.confirmarSenhaVisibility4
                                                                      ? Icons
                                                                          .visibility_outlined
                                                                      : Icons
                                                                          .visibility_off_outlined,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 20.0,
                                                                ),
                                                              ),
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                            cursorColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            validator: _model
                                                                .confirmarSenhaTextController4Validator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                          Builder(
                                                            builder: (context) {
                                                              if (_model
                                                                      .senhaIgual ==
                                                                  false) {
                                                                return Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .radio_button_off_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                    Text(
                                                                      'As senhas precisam ser idênticas.',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.roboto(
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          10.0)),
                                                                );
                                                              } else {
                                                                return Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .check_circle_sharp,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                    Text(
                                                                      'As senhas precisam ser idênticas.',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.roboto(
                                                                              fontWeight: FontWeight.w500,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          10.0)),
                                                                );
                                                              }
                                                            },
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 10.0)),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 10.0)),
                                                  ),
                                                ),
                                              ),
                                            Padding(
                                              padding: EdgeInsets.all(10.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.5,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.063,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                ),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    await authManager
                                                        .updatePassword(
                                                      newPassword: _model
                                                          .senhaTextController3
                                                          .text,
                                                      context: context,
                                                    );
                                                    safeSetState(() {});

                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'Senha alterada com sucesso',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                          ),
                                                        ),
                                                        duration: Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                      ),
                                                    );

                                                    context.pushNamedAuth(
                                                      LoginPageWidget.routeName,
                                                      context.mounted,
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .fade,
                                                          duration: Duration(
                                                              milliseconds: 0),
                                                        ),
                                                      },
                                                    );
                                                  },
                                                  text: 'Redefinir Senha',
                                                  options: FFButtonOptions(
                                                    width: double.infinity,
                                                    height: 23.5,
                                                    padding:
                                                        EdgeInsets.all(0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleMediumIsCustom,
                                                        ),
                                                    elevation: 0.0,
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
