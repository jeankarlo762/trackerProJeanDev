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
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'login_page_model.dart';
export 'login_page_model.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({super.key});

  static String routeName = 'loginPage';
  static String routePath = 'loginPage';

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget>
    with TickerProviderStateMixin {
  late LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageModel());

    _model.emailAddressLoginTextController ??= TextEditingController();
    _model.emailAddressLoginFocusNode ??= FocusNode();

    _model.passwordLoginTextController ??= TextEditingController();
    _model.passwordLoginFocusNode ??= FocusNode();

    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 920.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 920.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            child: Stack(
              children: [
                Opacity(
                  opacity: 0.1,
                  child: Lottie.network(
                    'https://lottie.host/b8bc72e2-2105-4044-a485-57d69d311a19/N9N9HGA92D.json',
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 1.084,
                    fit: BoxFit.fill,
                    animate: true,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.038,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                        ),
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    height: MediaQuery.sizeOf(context).height *
                                        0.75,
                                    constraints: BoxConstraints(
                                      maxWidth: 500.0,
                                    ),
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.15,
                                          decoration: BoxDecoration(),
                                          child: Visibility(
                                            visible: _model.erroLogin == true,
                                            child: wrapWithModel(
                                              model: _model.loginInvalidoModel,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: LoginInvalidoWidget(),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(15.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Image.asset(
                                                  Theme.of(context)
                                                              .brightness ==
                                                          Brightness.dark
                                                      ? 'assets/images/Ativo_51@2x.png'
                                                      : 'assets/images/Ativo_57@2x.png',
                                                  width: 158.0,
                                                  height: 174.3,
                                                  fit: BoxFit.contain,
                                                  alignment:
                                                      Alignment(-1.0, 0.0),
                                                ),
                                              ),
                                              Expanded(
                                                child: Form(
                                                  key: _model.formKey,
                                                  autovalidateMode:
                                                      AutovalidateMode.disabled,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: double.infinity,
                                                        child: TextFormField(
                                                          controller: _model
                                                              .emailAddressLoginTextController,
                                                          focusNode: _model
                                                              .emailAddressLoginFocusNode,
                                                          onChanged: (_) =>
                                                              EasyDebounce
                                                                  .debounce(
                                                            '_model.emailAddressLoginTextController',
                                                            Duration(
                                                                milliseconds:
                                                                    2000),
                                                            () async {
                                                              _model.erroLogin =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                          ),
                                                          autofocus: true,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText: 'Email',
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .labelMediumIsCustom,
                                                                    ),
                                                            hintText:
                                                                'Digite seu email...',
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodySmallFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodySmallIsCustom,
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: _model
                                                                            .erroLogin ==
                                                                        true
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .error
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: _model
                                                                            .erroLogin ==
                                                                        true
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .error
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: _model
                                                                            .erroLogin ==
                                                                        true
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .error
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                            ),
                                                            filled: true,
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            contentPadding:
                                                                EdgeInsets.all(
                                                                    24.0),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                          keyboardType:
                                                              TextInputType
                                                                  .emailAddress,
                                                          cursorColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          validator: _model
                                                              .emailAddressLoginTextControllerValidator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        child: TextFormField(
                                                          controller: _model
                                                              .passwordLoginTextController,
                                                          focusNode: _model
                                                              .passwordLoginFocusNode,
                                                          onFieldSubmitted:
                                                              (_) async {
                                                            _model.erroLogin =
                                                                false;
                                                            safeSetState(() {});
                                                          },
                                                          autofocus: false,
                                                          obscureText: !_model
                                                              .passwordLoginVisibility,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText: 'Senha',
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .labelMediumIsCustom,
                                                                    ),
                                                            hintText:
                                                                'Digite sua senha...',
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodySmallFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodySmallIsCustom,
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: _model
                                                                            .erroLogin ==
                                                                        true
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .error
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                            ),
                                                            filled: true,
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            contentPadding:
                                                                EdgeInsets.all(
                                                                    24.0),
                                                            suffixIcon: InkWell(
                                                              onTap: () =>
                                                                  safeSetState(
                                                                () => _model
                                                                        .passwordLoginVisibility =
                                                                    !_model
                                                                        .passwordLoginVisibility,
                                                              ),
                                                              focusNode: FocusNode(
                                                                  skipTraversal:
                                                                      true),
                                                              child: Icon(
                                                                _model.passwordLoginVisibility
                                                                    ? Icons
                                                                        .visibility_outlined
                                                                    : Icons
                                                                        .visibility_off_outlined,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 24.0,
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
                                                                letterSpacing:
                                                                    0.0,
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
                                                              .passwordLoginTextControllerValidator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 15.0)),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 16.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      _model.erroLogin = false;
                                                      safeSetState(() {});
                                                      _model.loginStatus =
                                                          await actions
                                                              .loginUser(
                                                        _model
                                                            .emailAddressLoginTextController
                                                            .text,
                                                        _model
                                                            .passwordLoginTextController
                                                            .text,
                                                      );
                                                      if (_model.loginStatus ==
                                                          '0') {
                                                        context.pushNamed(
                                                          DashBoardPageWidget
                                                              .routeName,
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .leftToRight,
                                                            ),
                                                          },
                                                        );

                                                        // get_user_profiles
                                                        _model.userProfile =
                                                            await UserProfilesTable()
                                                                .queryRows(
                                                          queryFn: (q) =>
                                                              q.eqOrNull(
                                                            'id',
                                                            currentUserUid,
                                                          ),
                                                        );
                                                        // update_user_profiles
                                                        FFAppState()
                                                                .userprofile =
                                                            UserProfileStruct(
                                                          id: _model.userProfile
                                                              ?.firstOrNull?.id,
                                                          fullName: _model
                                                              .userProfile
                                                              ?.firstOrNull
                                                              ?.fullName,
                                                          avatarUrl: _model
                                                              .userProfile
                                                              ?.firstOrNull
                                                              ?.avatarUrl,
                                                          clientId: _model
                                                              .userProfile
                                                              ?.firstOrNull
                                                              ?.clientId,
                                                        );
                                                        safeSetState(() {});
                                                        // get_clients_client
                                                        _model.clientsClient =
                                                            await ClientsClientTable()
                                                                .queryRows(
                                                          queryFn: (q) =>
                                                              q.eqOrNull(
                                                            'id',
                                                            FFAppState()
                                                                .userprofile
                                                                .clientId,
                                                          ),
                                                        );
                                                        // set_clients_client
                                                        FFAppState().client =
                                                            ClientStruct(
                                                          id: _model
                                                              .clientsClient
                                                              ?.firstOrNull
                                                              ?.id,
                                                          name: _model
                                                              .clientsClient
                                                              ?.firstOrNull
                                                              ?.name,
                                                          cnpj: _model
                                                              .clientsClient
                                                              ?.firstOrNull
                                                              ?.cnpj,
                                                          logo: _model
                                                              .clientsClient
                                                              ?.firstOrNull
                                                              ?.logo,
                                                          site: _model
                                                              .clientsClient
                                                              ?.firstOrNull
                                                              ?.site,
                                                          gerenteContasId: _model
                                                              .clientsClient
                                                              ?.firstOrNull
                                                              ?.gerenteContasId,
                                                        );
                                                        safeSetState(() {});
                                                      } else {
                                                        _model.erroLogin = true;
                                                        safeSetState(() {});
                                                      }

                                                      safeSetState(() {});
                                                    },
                                                    text: 'Entrar',
                                                    options: FFButtonOptions(
                                                      width: 200.9,
                                                      height: 52.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmallIsCustom,
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 1.0),
                                                child: Builder(
                                                  builder: (context) => InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child:
                                                                GestureDetector(
                                                              onTap: () {
                                                                FocusScope.of(
                                                                        dialogContext)
                                                                    .unfocus();
                                                                FocusManager
                                                                    .instance
                                                                    .primaryFocus
                                                                    ?.unfocus();
                                                              },
                                                              child:
                                                                  RedefinirSenhaWidget(),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                    child: AutoSizeText(
                                                      'Esqueci minha senha',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lato(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                              ),
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'textOnPageLoadAnimation1']!),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 15.0)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                ))
                                  ClipRRect(
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      decoration: BoxDecoration(),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 1.0),
                                        child: AutoSizeText(
                                          'Tracker Pro – powered by Getel Tecnologia.',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation2']!),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
