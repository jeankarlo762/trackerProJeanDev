import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'side_bar_nav_model.dart';
export 'side_bar_nav_model.dart';

class SideBarNavWidget extends StatefulWidget {
  const SideBarNavWidget({
    super.key,
    this.oneBG,
    this.oneIcon,
    this.twoBG,
    this.twoIcon,
    this.threeColor,
    this.threeIcon,
    required this.userIcon,
    required this.userBG,
    this.fixIcon,
    this.fixBG,
  });

  final Color? oneBG;
  final Widget? oneIcon;
  final Color? twoBG;
  final Widget? twoIcon;
  final Color? threeColor;
  final Widget? threeIcon;
  final Widget? userIcon;
  final Color? userBG;
  final Widget? fixIcon;
  final Color? fixBG;

  @override
  State<SideBarNavWidget> createState() => _SideBarNavWidgetState();
}

class _SideBarNavWidgetState extends State<SideBarNavWidget> {
  late SideBarNavModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SideBarNavModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: valueOrDefault<double>(
        FFAppState().NavBarCompactView ? 100.0 : 230.0,
        230.0,
      ),
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 3.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              1.0,
            ),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(12.0),
          topLeft: Radius.circular(0.0),
          topRight: Radius.circular(12.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      if ((Theme.of(context).brightness == Brightness.light) &&
                          (FFAppState().NavBarCompactView == false))
                        Image.asset(
                          'assets/images/logo_tracker_black.png',
                          width: 130.0,
                          height: 40.0,
                          fit: BoxFit.fitWidth,
                        ),
                      if (FFAppState().NavBarCompactView)
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Image.asset(
                              'assets/images/logo.png',
                              width: 34.0,
                              height: 34.0,
                              fit: BoxFit.contain,
                              alignment: Alignment(0.0, 0.0),
                            ),
                          ),
                        ),
                      if ((Theme.of(context).brightness == Brightness.dark) &&
                          (FFAppState().NavBarCompactView == false))
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Image.asset(
                            'assets/images/logo_tracker_black.png',
                            width: 130.0,
                            height: 40.0,
                            fit: BoxFit.contain,
                            alignment: Alignment(-1.0, 0.0),
                          ),
                        ),
                      ToggleIcon(
                        onPressed: () async {
                          safeSetState(() => FFAppState().NavBarCompactView =
                              !FFAppState().NavBarCompactView);
                        },
                        value: FFAppState().NavBarCompactView,
                        onIcon: Icon(
                          Icons.keyboard_double_arrow_right_rounded,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 24.0,
                        ),
                        offIcon: Icon(
                          Icons.keyboard_double_arrow_left_outlined,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Menu',
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodySmallFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodySmallIsCustom,
                            ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                DashBoardPageWidget.routeName,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                            child: Container(
                              width: double.infinity,
                              height: 48.0,
                              decoration: BoxDecoration(
                                color: widget!.oneBG,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 4.0, 4.0, 4.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            valueOrDefault<double>(
                                              FFAppState().NavBarCompactView
                                                  ? 15.0
                                                  : 0.0,
                                              0.0,
                                            ),
                                            0.0,
                                            0.0,
                                            0.0),
                                        child: widget!.oneIcon!,
                                      ),
                                    ),
                                    if (FFAppState().NavBarCompactView == false)
                                      Text(
                                        'Dashboard',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                      ),
                                  ].divide(SizedBox(width: 12.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              InventoryPageWidget.routeName,
                              queryParameters: {
                                'idDevice': serializeParam(
                                  0,
                                  ParamType.int,
                                ),
                                'viewList': serializeParam(
                                  true,
                                  ParamType.bool,
                                ),
                                'viewDevice': serializeParam(
                                  false,
                                  ParamType.bool,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            height: 48.0,
                            decoration: BoxDecoration(
                              color: widget!.twoBG,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 4.0, 4.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          valueOrDefault<double>(
                                            FFAppState().NavBarCompactView
                                                ? 15.0
                                                : 0.0,
                                            0.0,
                                          ),
                                          0.0,
                                          0.0,
                                          0.0),
                                      child: widget!.twoIcon!,
                                    ),
                                  ),
                                  if (FFAppState().NavBarCompactView == false)
                                    Text(
                                      'Inventário',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    ),
                                ].divide(SizedBox(width: 12.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              UsersPageWidget.routeName,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            height: 48.0,
                            decoration: BoxDecoration(
                              color: widget!.userBG,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 4.0, 4.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          valueOrDefault<double>(
                                            FFAppState().NavBarCompactView
                                                ? 15.0
                                                : 0.0,
                                            0.0,
                                          ),
                                          0.0,
                                          0.0,
                                          0.0),
                                      child: widget!.userIcon!,
                                    ),
                                  ),
                                  if (FFAppState().NavBarCompactView == false)
                                    Text(
                                      'Usuários',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    ),
                                ].divide(SizedBox(width: 12.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              MaintenancePageWidget.routeName,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            height: 48.0,
                            decoration: BoxDecoration(
                              color: valueOrDefault<Color>(
                                widget!.fixBG,
                                FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 4.0, 4.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          valueOrDefault<double>(
                                            FFAppState().NavBarCompactView
                                                ? 15.0
                                                : 0.0,
                                            0.0,
                                          ),
                                          0.0,
                                          0.0,
                                          0.0),
                                      child: widget!.fixIcon!,
                                    ),
                                  ),
                                  if (FFAppState().NavBarCompactView == false)
                                    Text(
                                      'Manutenção',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    ),
                                ].divide(SizedBox(width: 12.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              ProfilePageWidget.routeName,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            height: 48.0,
                            decoration: BoxDecoration(
                              color: widget!.threeColor,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 4.0, 4.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          valueOrDefault<double>(
                                            FFAppState().NavBarCompactView
                                                ? 15.0
                                                : 0.0,
                                            0.0,
                                          ),
                                          0.0,
                                          0.0,
                                          0.0),
                                      child: widget!.threeIcon!,
                                    ),
                                  ),
                                  if (FFAppState().NavBarCompactView == false)
                                    Text(
                                      'Minha Empresa',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    ),
                                ].divide(SizedBox(width: 12.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  GoRouter.of(context).prepareAuthEvent();
                  await authManager.signOut();
                  GoRouter.of(context).clearRedirectLocation();

                  FFAppState().userprofile =
                      UserProfileStruct.fromSerializableMap(jsonDecode('{}'));
                  FFAppState().client = ClientStruct();
                  safeSetState(() {});

                  context.goNamedAuth(
                      LoginPageWidget.routeName, context.mounted);
                },
                child: Container(
                  width: double.infinity,
                  height: 48.0,
                  decoration: BoxDecoration(
                    color: widget!.threeColor,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: Color(0x4395A1AC),
                    ),
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 4.0, 4.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              valueOrDefault<double>(
                                FFAppState().NavBarCompactView ? 15.0 : 0.0,
                                0.0,
                              ),
                              0.0,
                              12.0,
                              0.0),
                          child: Icon(
                            Icons.exit_to_app,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                        ),
                        if (FFAppState().NavBarCompactView == false)
                          Text(
                            'Sair',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
