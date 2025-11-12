import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/user_page/edit_user/edit_user_widget.dart';
import '/user_page/profile_view/profile_view_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'card_user_info_model.dart';
export 'card_user_info_model.dart';

class CardUserInfoWidget extends StatefulWidget {
  const CardUserInfoWidget({
    super.key,
    this.name,
    this.position,
    this.departament,
    this.devices,
    this.idCollaborator,
    this.useravatar,
  });

  final String? name;
  final String? position;
  final String? departament;
  final int? devices;
  final int? idCollaborator;
  final String? useravatar;

  @override
  State<CardUserInfoWidget> createState() => _CardUserInfoWidgetState();
}

class _CardUserInfoWidgetState extends State<CardUserInfoWidget>
    with TickerProviderStateMixin {
  late CardUserInfoModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardUserInfoModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: Offset(0.0, -30.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: Offset(0.0, -30.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: Offset(0.0, -30.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

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
      width: MediaQuery.sizeOf(context).width * 0.198,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (responsiveVisibility(
                  context: context,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      constraints: BoxConstraints(
                        minWidth: 100.0,
                        minHeight: MediaQuery.sizeOf(context).height * 0.15,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
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
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Builder(
                        builder: (context) => InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showDialog(
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: ProfileViewWidget(
                                    idColaborattor: 0,
                                  ),
                                );
                              },
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (responsiveVisibility(
                                context: context,
                                tabletLandscape: false,
                                desktop: false,
                              ))
                                Expanded(
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                1.0,
                                            decoration: BoxDecoration(),
                                            child: Padding(
                                              padding: EdgeInsets.all(15.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100.0),
                                                    child: Image.network(
                                                      valueOrDefault<String>(
                                                        widget!.useravatar,
                                                        'https://t4.ftcdn.net/jpg/00/64/67/63/360_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg',
                                                      ),
                                                      width: 80.0,
                                                      height: 80.0,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                  if (_model.viewAction == true)
                                                    Container(
                                                      width: 199.1,
                                                      height: 63.8,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  8.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  8.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  0.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  0.0),
                                                        ),
                                                      ),
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.0,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                1.0,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  10.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              FlutterFlowIconButton(
                                                                borderColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                borderRadius:
                                                                    8.0,
                                                                buttonSize:
                                                                    48.0,
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                icon: Icon(
                                                                  Icons
                                                                      .remove_red_eye,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  size: 24.0,
                                                                ),
                                                                onPressed:
                                                                    () async {
                                                                  await showModalBottomSheet(
                                                                    isScrollControlled:
                                                                        true,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                    enableDrag:
                                                                        false,
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (context) {
                                                                      return Padding(
                                                                        padding:
                                                                            MediaQuery.viewInsetsOf(context),
                                                                        child:
                                                                            ProfileViewWidget(
                                                                          idColaborattor:
                                                                              widget!.idCollaborator,
                                                                        ),
                                                                      );
                                                                    },
                                                                  ).then((value) =>
                                                                      safeSetState(
                                                                          () {}));
                                                                },
                                                              ),
                                                              FlutterFlowIconButton(
                                                                borderColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                borderRadius:
                                                                    8.0,
                                                                buttonSize:
                                                                    48.0,
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                icon: Icon(
                                                                  Icons.edit,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  size: 24.0,
                                                                ),
                                                                onPressed:
                                                                    () async {
                                                                  await showModalBottomSheet(
                                                                    isScrollControlled:
                                                                        true,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                    enableDrag:
                                                                        false,
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (context) {
                                                                      return Padding(
                                                                        padding:
                                                                            MediaQuery.viewInsetsOf(context),
                                                                        child:
                                                                            EditUserWidget(
                                                                          idCollaborator:
                                                                              widget!.idCollaborator,
                                                                        ),
                                                                      );
                                                                    },
                                                                  ).then((value) =>
                                                                      safeSetState(
                                                                          () {}));
                                                                },
                                                              ),
                                                              FlutterFlowIconButton(
                                                                borderColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                borderRadius:
                                                                    8.0,
                                                                buttonSize:
                                                                    48.0,
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                icon: Icon(
                                                                  Icons
                                                                      .devices_other,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  size: 24.0,
                                                                ),
                                                                onPressed:
                                                                    () async {
                                                                  context
                                                                      .pushNamed(
                                                                    InventoryPageWidget
                                                                        .routeName,
                                                                    queryParameters:
                                                                        {
                                                                      'filterUser':
                                                                          serializeParam(
                                                                        widget!
                                                                            .idCollaborator,
                                                                        ParamType
                                                                            .int,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                },
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 10.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'containerOnPageLoadAnimation1']!),
                                                  if (_model.viewAction ==
                                                      false)
                                                    Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.455,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          1.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  widget!.name,
                                                                  'João Silva',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleMediumFamily,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .titleMediumIsCustom,
                                                                    ),
                                                              ),
                                                              Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  widget!
                                                                      .position,
                                                                  'Diretor',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodySmallFamily,
                                                                      fontSize:
                                                                          11.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodySmallIsCustom,
                                                                    ),
                                                              ),
                                                              FutureBuilder<
                                                                  List<
                                                                      ViewColaboradorDetailsRow>>(
                                                                future:
                                                                    ViewColaboradorDetailsTable()
                                                                        .queryRows(
                                                                  queryFn: (q) =>
                                                                      q.eqOrNull(
                                                                    'site_nome',
                                                                    widget!
                                                                        .departament,
                                                                  ),
                                                                ),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        child:
                                                                            SpinKitFoldingCube(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              50.0,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<ViewColaboradorDetailsRow>
                                                                      txtDepartamentUserViewColaboradorDetailsRowList =
                                                                      snapshot
                                                                          .data!;

                                                                  return Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      txtDepartamentUserViewColaboradorDetailsRowList
                                                                          .firstOrNull
                                                                          ?.siteNome,
                                                                      '[defaut]',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).labelLargeFamily,
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                        ),
                                                                  );
                                                                },
                                                              ),
                                                            ],
                                                          ),
                                                          if (_model
                                                                  .viewAction ==
                                                              false)
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                FutureBuilder<
                                                                    List<
                                                                        AgentsAgentRow>>(
                                                                  future: AgentsAgentTable()
                                                                      .queryRows(
                                                                    queryFn: (q) =>
                                                                        q.eqOrNull(
                                                                      'collaborator_id',
                                                                      widget!
                                                                          .devices,
                                                                    ),
                                                                  ),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              SpinKitFoldingCube(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                50.0,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    List<AgentsAgentRow>
                                                                        txtDevicesAgentsAgentRowList =
                                                                        snapshot
                                                                            .data!;

                                                                    return Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        txtDevicesAgentsAgentRowList
                                                                            .length
                                                                            .toString(),
                                                                        '0',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            fontSize:
                                                                                18.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                          ),
                                                                    );
                                                                  },
                                                                ),
                                                                Text(
                                                                  'Ativos',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                              ],
                                                            ).animateOnPageLoad(
                                                                animationsMap[
                                                                    'columnOnPageLoadAnimation']!),
                                                        ].divide(SizedBox(
                                                            width: 20.0)),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'containerOnPageLoadAnimation2']!),
                                                  FlutterFlowIconButton(
                                                    borderRadius: 64.0,
                                                    borderWidth: 2.0,
                                                    buttonSize: 38.89,
                                                    hoverIconColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                    icon: FaIcon(
                                                      FontAwesomeIcons.list,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 25.0,
                                                    ),
                                                    onPressed: () async {
                                                      _model.viewAction =
                                                          !_model.viewAction;
                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                ].divide(SizedBox(width: 10.0)),
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
                  ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                ))
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.2,
                      height: MediaQuery.sizeOf(context).height * 0.394,
                      constraints: BoxConstraints(
                        minWidth: 240.0,
                        minHeight: 300.0,
                        maxWidth: 250.0,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            color: FlutterFlowTheme.of(context).primary,
                            spreadRadius: 1.0,
                          )
                        ],
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100.0),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      widget!.useravatar,
                                      'https://t4.ftcdn.net/jpg/00/64/67/63/360_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg',
                                    ),
                                    width: 100.0,
                                    height: 100.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  valueOrDefault<String>(
                                    widget!.name,
                                    'João Silva',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleMediumIsCustom,
                                      ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    widget!.position,
                                    'Diretor',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodySmallFamily,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodySmallIsCustom,
                                      ),
                                ),
                                FutureBuilder<List<ViewColaboradorDetailsRow>>(
                                  future:
                                      ViewColaboradorDetailsTable().queryRows(
                                    queryFn: (q) => q.eqOrNull(
                                      'site_nome',
                                      widget!.departament,
                                    ),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: SpinKitFoldingCube(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 50.0,
                                          ),
                                        ),
                                      );
                                    }
                                    List<ViewColaboradorDetailsRow>
                                        txtDepartamentUserViewColaboradorDetailsRowList =
                                        snapshot.data!;

                                    return Text(
                                      valueOrDefault<String>(
                                        txtDepartamentUserViewColaboradorDetailsRowList
                                            .firstOrNull?.siteNome,
                                        '[default]',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelLargeFamily,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelLargeIsCustom,
                                          ),
                                    );
                                  },
                                ),
                                FutureBuilder<List<ViewColaboradorDetailsRow>>(
                                  future:
                                      ViewColaboradorDetailsTable().queryRows(
                                    queryFn: (q) => q.eqOrNull(
                                      'id',
                                      widget!.idCollaborator,
                                    ),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: SpinKitFoldingCube(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 50.0,
                                          ),
                                        ),
                                      );
                                    }
                                    List<ViewColaboradorDetailsRow>
                                        containerViewColaboradorDetailsRowList =
                                        snapshot.data!;

                                    return Container(
                                      width: 106.11,
                                      height: 20.0,
                                      decoration: BoxDecoration(
                                        color:
                                            containerViewColaboradorDetailsRowList
                                                        .firstOrNull
                                                        ?.flagAtivo ==
                                                    true
                                                ? FlutterFlowTheme.of(context)
                                                    .success
                                                : FlutterFlowTheme.of(context)
                                                    .error,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Text(
                                        valueOrDefault<String>(
                                          containerViewColaboradorDetailsRowList
                                                      .firstOrNull?.flagAtivo ==
                                                  true
                                              ? 'Ativo'
                                              : 'Inativo',
                                          'status',
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLargeFamily,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelLargeIsCustom,
                                            ),
                                      ),
                                    );
                                  },
                                ),
                              ].divide(SizedBox(height: 10.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FutureBuilder<List<AgentsAgentRow>>(
                                  future: AgentsAgentTable().queryRows(
                                    queryFn: (q) => q.eqOrNull(
                                      'collaborator_id',
                                      widget!.devices,
                                    ),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: SpinKitFoldingCube(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 50.0,
                                          ),
                                        ),
                                      );
                                    }
                                    List<AgentsAgentRow>
                                        txtDevicesAgentsAgentRowList =
                                        snapshot.data!;

                                    return Text(
                                      valueOrDefault<String>(
                                        txtDevicesAgentsAgentRowList.length
                                            .toString(),
                                        '0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    );
                                  },
                                ),
                                Text(
                                  'Ativos',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ],
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.058,
                              constraints: BoxConstraints(
                                minWidth: 200.0,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 50.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(),
                                    child: FlutterFlowIconButton(
                                      borderColor:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius: 8.0,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      icon: Icon(
                                        Icons.remove_red_eye,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 25.0,
                                      ),
                                      onPressed: () async {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: ProfileViewWidget(
                                                idColaborattor:
                                                    widget!.idCollaborator,
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: 50.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(),
                                    child: FlutterFlowIconButton(
                                      borderColor:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius: 8.0,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      icon: Icon(
                                        Icons.edit,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 25.0,
                                      ),
                                      onPressed: () async {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: EditUserWidget(
                                                idCollaborator:
                                                    widget!.idCollaborator,
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: 50.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(),
                                    child: FlutterFlowIconButton(
                                      borderColor:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius: 8.0,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      icon: Icon(
                                        Icons.devices_other,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 25.0,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed(
                                          InventoryPageWidget.routeName,
                                          queryParameters: {
                                            'filterUser': serializeParam(
                                              widget!.idCollaborator,
                                              ParamType.int,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                    ),
                                  ),
                                ].divide(SizedBox(width: 10.0)),
                              ),
                            ),
                          ].divide(SizedBox(height: 5.0)),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
