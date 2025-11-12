import '/backend/supabase/supabase.dart';
import '/components/cadastro_ticket_mobile/cadastro_ticket_mobile_widget.dart';
import '/components/maintenance_page/cadastro_ticket/cadastro_ticket_widget.dart';
import '/components/maintenance_page/details_ticket/details_ticket_widget.dart';
import '/components/maintenance_page/dialog_delete/dialog_delete_widget.dart';
import '/components/maintenance_page/drop_down_mobile/drop_down_mobile_widget.dart';
import '/components/maintenance_page/edit_ticket/edit_ticket_widget.dart';
import '/components/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'maintenance_page_model.dart';
export 'maintenance_page_model.dart';

class MaintenancePageWidget extends StatefulWidget {
  const MaintenancePageWidget({
    super.key,
    this.idTicket,
  });

  final int? idTicket;

  static String routeName = 'maintenancePage';
  static String routePath = 'maintenancePage';

  @override
  State<MaintenancePageWidget> createState() => _MaintenancePageWidgetState();
}

class _MaintenancePageWidgetState extends State<MaintenancePageWidget> {
  late MaintenancePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MaintenancePageModel());

    _model.inputHostnameTextController ??= TextEditingController();
    _model.inputHostnameFocusNode ??= FocusNode();
    _model.inputHostnameFocusNode!.addListener(() => safeSetState(() {}));
    _model.inputHostnameMainTextController ??= TextEditingController();
    _model.inputHostnameMainFocusNode ??= FocusNode();
    _model.inputHostnameMainFocusNode!.addListener(() => safeSetState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    // On page dispose action.
    () async {
      safeSetState(() => _model.requestCompleter6 = null);
      await _model.waitForRequestCompleted6();
    }();

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
        body: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
            ))
              wrapWithModel(
                model: _model.sideBarNavModel,
                updateCallback: () => safeSetState(() {}),
                updateOnChange: true,
                child: SideBarNavWidget(
                  oneBG: FlutterFlowTheme.of(context).secondaryBackground,
                  oneIcon: Icon(
                    Icons.bar_chart_rounded,
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                  twoBG: FlutterFlowTheme.of(context).secondaryBackground,
                  twoIcon: Icon(
                    Icons.devices_other,
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                  threeColor: FlutterFlowTheme.of(context).secondaryBackground,
                  threeIcon: Icon(
                    Icons.account_circle_outlined,
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                  userIcon: FaIcon(
                    FontAwesomeIcons.users,
                  ),
                  userBG: FlutterFlowTheme.of(context).secondaryBackground,
                  fixIcon: Icon(
                    Icons.build_outlined,
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                  fixBG: FlutterFlowTheme.of(context).primaryBackground,
                ),
              ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tickets do Suporte',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        fontSize: 30.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                                Text(
                                  'Controle total sobre seus chamados de suporte.',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: Color(0xFFA4ABB4),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      FutureBuilder<List<TicketsComStatusRow>>(
                        future: TicketsComStatusTable().queryRows(
                          queryFn: (q) => q,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: SpinKitFoldingCube(
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 50.0,
                                ),
                              ),
                            );
                          }
                          List<TicketsComStatusRow>
                              containerTicketsComStatusRowList = snapshot.data!;

                          return Container(
                            decoration: BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                ))
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Wrap(
                                        spacing: 0.0,
                                        runSpacing: 20.0,
                                        alignment: WrapAlignment.spaceAround,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.center,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              safeSetState(() {
                                                _model
                                                    .dropDownStatusValueController
                                                    ?.value = 'Todos os Status';
                                              });
                                              safeSetState(() {
                                                _model
                                                    .inputHostnameMainTextController
                                                    ?.clear();
                                                _model
                                                    .inputHostnameTextController
                                                    ?.clear();
                                              });
                                            },
                                            child: Container(
                                              width: double.infinity,
                                              height: 245.0,
                                              constraints: BoxConstraints(
                                                maxWidth:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.2,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                shape: BoxShape.rectangle,
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                  width: 0.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(10.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  20.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Icon(
                                                        Icons.verified_outlined,
                                                        color:
                                                            Color(0xFF5B7FD0),
                                                        size: 50.0,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'TOTAL ',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .labelSmall
                                                            .override(
                                                              font: GoogleFonts
                                                                  .lato(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .fontStyle,
                                                              ),
                                                              fontSize: 20.0,
                                                              letterSpacing:
                                                                  1.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                    ),
                                                    Text(
                                                      containerTicketsComStatusRowList
                                                          .length
                                                          .toString(),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            fontSize: 40.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                    Text(
                                                      'No momento',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            fontSize: 20.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 250.0,
                                            constraints: BoxConstraints(
                                              maxWidth:
                                                  MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.2,
                                            ),
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .lineColor,
                                                width: 1.0,
                                              ),
                                            ),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                safeSetState(() {
                                                  _model
                                                      .dropDownStatusValueController
                                                      ?.value = 'Abertos';
                                                });
                                              },
                                              child: Container(
                                                width: 250.0,
                                                height: 250.0,
                                                constraints: BoxConstraints(
                                                  maxWidth:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.25,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                  shape: BoxShape.rectangle,
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .lineColor,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(10.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    20.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: FaIcon(
                                                          FontAwesomeIcons
                                                              .ticketAlt,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          size: 50.0,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    10.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          ' ABERTO',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelSmall
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lato(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 20.0,
                                                                letterSpacing:
                                                                    1.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                      FutureBuilder<
                                                          List<
                                                              TicketsComStatusRow>>(
                                                        future:
                                                            TicketsComStatusTable()
                                                                .queryRows(
                                                          queryFn: (q) =>
                                                              q.inFilterOrNull(
                                                            'status_id',
                                                            [2, 3],
                                                          ),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                child:
                                                                    SpinKitFoldingCube(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  size: 50.0,
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<TicketsComStatusRow>
                                                              textTicketsComStatusRowList =
                                                              snapshot.data!;

                                                          return Text(
                                                            textTicketsComStatusRowList
                                                                .length
                                                                .toString(),
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .displayMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .displayMediumFamily,
                                                                  fontSize:
                                                                      40.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .displayMediumIsCustom,
                                                                ),
                                                          );
                                                        },
                                                      ),
                                                      Text(
                                                        'No momento',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                              fontSize: 20.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumIsCustom,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 250.0,
                                            constraints: BoxConstraints(
                                              maxWidth:
                                                  MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.2,
                                            ),
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .lineColor,
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    safeSetState(() {
                                                      _model
                                                          .dropDownStatusValueController
                                                          ?.value = 'Finalizado';
                                                    });
                                                    safeSetState(() => _model
                                                            .requestCompleter1 =
                                                        null);
                                                  },
                                                  child: Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.196,
                                                    height: 247.3,
                                                    decoration: BoxDecoration(),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(10.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        20.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .check,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              size: 50.0,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'FINALIZADO',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmall
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .lato(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelSmall
                                                                          .fontStyle,
                                                                    ),
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        1.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                          FutureBuilder<
                                                              List<
                                                                  TicketsComStatusRow>>(
                                                            future:
                                                                TicketsComStatusTable()
                                                                    .queryRows(
                                                              queryFn: (q) =>
                                                                  q.eqOrNull(
                                                                'status_id',
                                                                4,
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
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        SpinKitFoldingCube(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          50.0,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<TicketsComStatusRow>
                                                                  textTicketsComStatusRowList =
                                                                  snapshot
                                                                      .data!;

                                                              return Text(
                                                                textTicketsComStatusRowList
                                                                    .length
                                                                    .toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .displayMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .displayMediumFamily,
                                                                      fontSize:
                                                                          40.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .displayMediumIsCustom,
                                                                    ),
                                                              );
                                                            },
                                                          ),
                                                          Text(
                                                            'No momento',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
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
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              safeSetState(() {
                                                _model
                                                    .dropDownStatusValueController
                                                    ?.value = 'Concluído';
                                              });
                                              safeSetState(() => _model
                                                  .requestCompleter1 = null);
                                            },
                                            child: Container(
                                              width: double.infinity,
                                              height: 250.0,
                                              constraints: BoxConstraints(
                                                maxWidth:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.2,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                shape: BoxShape.rectangle,
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(10.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  20.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Icon(
                                                        Icons
                                                            .verified_user_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                        size: 50.0,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        ' CONCLUÍDO',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .labelSmall
                                                            .override(
                                                              font: GoogleFonts
                                                                  .lato(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .fontStyle,
                                                              ),
                                                              fontSize: 20.0,
                                                              letterSpacing:
                                                                  1.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                    ),
                                                    FutureBuilder<
                                                        List<
                                                            TicketsComStatusRow>>(
                                                      future:
                                                          TicketsComStatusTable()
                                                              .queryRows(
                                                        queryFn: (q) =>
                                                            q.eqOrNull(
                                                          'status_id',
                                                          5,
                                                        ),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  SpinKitFoldingCube(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 50.0,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<TicketsComStatusRow>
                                                            textTicketsComStatusRowList =
                                                            snapshot.data!;

                                                        return Text(
                                                          textTicketsComStatusRowList
                                                              .length
                                                              .toString(),
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .displayMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .displayMediumFamily,
                                                                fontSize: 40.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .displayMediumIsCustom,
                                                              ),
                                                        );
                                                      },
                                                    ),
                                                    Text(
                                                      'No momento',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            fontSize: 20.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
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
                                if (responsiveVisibility(
                                  context: context,
                                  desktop: false,
                                ))
                                  Wrap(
                                    spacing: 2.0,
                                    runSpacing: 10.0,
                                    alignment: WrapAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    direction: Axis.vertical,
                                    runAlignment: WrapAlignment.spaceBetween,
                                    verticalDirection: VerticalDirection.down,
                                    clipBehavior: Clip.none,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          safeSetState(() {
                                            _model
                                                .dropDownStatusMobile3ValueController
                                                ?.value = 'Todos os Status';
                                          });
                                        },
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.9,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.12,
                                          constraints: BoxConstraints(
                                            maxWidth: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.92,
                                            maxHeight:
                                                MediaQuery.sizeOf(context)
                                                        .height *
                                                    1.0,
                                          ),
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.5,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          1.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'TOTAL',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                              fontSize: 15.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumIsCustom,
                                                            ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: FutureBuilder<
                                                            List<
                                                                TicketsComStatusRow>>(
                                                          future:
                                                              TicketsComStatusTable()
                                                                  .queryRows(
                                                            queryFn: (q) => q,
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      SpinKitFoldingCube(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 50.0,
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            List<TicketsComStatusRow>
                                                                textTicketsComStatusRowList =
                                                                snapshot.data!;

                                                            return Text(
                                                              textTicketsComStatusRowList
                                                                  .length
                                                                  .toString(),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary,
                                                                    fontSize:
                                                                        20.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 5.0)),
                                                  ),
                                                ),
                                                Container(
                                                  width: 64.75,
                                                  height: 57.6,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Icon(
                                                    Icons.verified_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    size: 40.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          safeSetState(() {
                                            _model
                                                .dropDownStatusMobile3ValueController
                                                ?.value = 'Abertos';
                                          });
                                        },
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.9,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.12,
                                          constraints: BoxConstraints(
                                            maxWidth: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.92,
                                            maxHeight: 100.0,
                                          ),
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.5,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          1.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'ABERTO',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                              fontSize: 15.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumIsCustom,
                                                            ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: FutureBuilder<
                                                            List<
                                                                TicketsComStatusRow>>(
                                                          future:
                                                              TicketsComStatusTable()
                                                                  .queryRows(
                                                            queryFn: (q) => q
                                                                .neqOrNull(
                                                                  'status_id',
                                                                  1,
                                                                )
                                                                .neqOrNull(
                                                                  'status_id',
                                                                  4,
                                                                ),
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      SpinKitFoldingCube(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 50.0,
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            List<TicketsComStatusRow>
                                                                textTicketsComStatusRowList =
                                                                snapshot.data!;

                                                            return Text(
                                                              textTicketsComStatusRowList
                                                                  .length
                                                                  .toString(),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    fontSize:
                                                                        20.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 5.0)),
                                                  ),
                                                ),
                                                Container(
                                                  width: 64.7,
                                                  height: 57.6,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(10.0),
                                                      child: FaIcon(
                                                        FontAwesomeIcons
                                                            .ticketAlt,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        size: 30.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          safeSetState(() =>
                                              _model.requestCompleter2 = null);
                                          safeSetState(() {
                                            _model
                                                .dropDownStatusMobile3ValueController
                                                ?.value = 'Finalizado';
                                          });
                                        },
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.9,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.12,
                                          constraints: BoxConstraints(
                                            maxWidth: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.92,
                                            maxHeight: 100.0,
                                          ),
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.5,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          1.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'FINALIZADO',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                              fontSize: 15.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumIsCustom,
                                                            ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: FutureBuilder<
                                                            List<
                                                                TicketsComStatusRow>>(
                                                          future:
                                                              TicketsComStatusTable()
                                                                  .queryRows(
                                                            queryFn: (q) =>
                                                                q.eqOrNull(
                                                              'status_id',
                                                              4,
                                                            ),
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      SpinKitFoldingCube(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 50.0,
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            List<TicketsComStatusRow>
                                                                textTicketsComStatusRowList =
                                                                snapshot.data!;

                                                            return Text(
                                                              textTicketsComStatusRowList
                                                                  .length
                                                                  .toString(),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    fontSize:
                                                                        20.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 5.0)),
                                                  ),
                                                ),
                                                Container(
                                                  width: 64.7,
                                                  height: 57.6,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Icon(
                                                    Icons.warning_amber,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    size: 40.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          safeSetState(() {
                                            _model
                                                .dropDownStatusMobile3ValueController
                                                ?.value = 'Concluído';
                                          });
                                          safeSetState(() =>
                                              _model.requestCompleter2 = null);
                                        },
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.9,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.12,
                                          constraints: BoxConstraints(
                                            maxWidth: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.92,
                                            maxHeight:
                                                MediaQuery.sizeOf(context)
                                                        .height *
                                                    1.0,
                                          ),
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.449,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          1.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'CONCLUÍDO',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                              fontSize: 15.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumIsCustom,
                                                            ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: FutureBuilder<
                                                            List<
                                                                TicketsComStatusRow>>(
                                                          future:
                                                              TicketsComStatusTable()
                                                                  .queryRows(
                                                            queryFn: (q) =>
                                                                q.eqOrNull(
                                                              'status_id',
                                                              5,
                                                            ),
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      SpinKitFoldingCube(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 50.0,
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            List<TicketsComStatusRow>
                                                                textTicketsComStatusRowList =
                                                                snapshot.data!;

                                                            return Text(
                                                              textTicketsComStatusRowList
                                                                  .length
                                                                  .toString(),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .success,
                                                                    fontSize:
                                                                        20.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 5.0)),
                                                  ),
                                                ),
                                                Container(
                                                  width: 64.7,
                                                  height: 57.6,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Icon(
                                                    Icons
                                                        .verified_user_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    size: 40.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          );
                        },
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 0.565,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    2.0, 0.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (responsiveVisibility(
                                      context: context,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 20.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.888,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.681,
                                                    decoration: BoxDecoration(),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      child: TextFormField(
                                                        controller: _model
                                                            .inputHostnameTextController,
                                                        focusNode: _model
                                                            .inputHostnameFocusNode,
                                                        onChanged: (_) =>
                                                            EasyDebounce
                                                                .debounce(
                                                          '_model.inputHostnameTextController',
                                                          Duration(
                                                              milliseconds:
                                                                  500),
                                                          () async {
                                                            safeSetState(() =>
                                                                _model.requestCompleter2 =
                                                                    null);
                                                            safeSetState(() =>
                                                                _model.requestCompleter4 =
                                                                    null);
                                                            safeSetState(() =>
                                                                _model.requestCompleter5 =
                                                                    null);
                                                          },
                                                        ),
                                                        autofocus: false,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          isDense: true,
                                                          labelText: 'Pesquisa',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .labelMediumFamily,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .labelMediumIsCustom,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
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
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          prefixIcon: Icon(
                                                            Icons.search,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                              fontSize: 18.0,
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
                                                                .primaryText,
                                                        enableInteractiveSelection:
                                                            true,
                                                        validator: _model
                                                            .inputHostnameTextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.169,
                                                    constraints: BoxConstraints(
                                                      maxHeight: 50.0,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: Color(0x00FFFFFF),
                                                    ),
                                                    child: Visibility(
                                                      visible:
                                                          responsiveVisibility(
                                                        context: context,
                                                        tabletLandscape: false,
                                                        desktop: false,
                                                      ),
                                                      child: Builder(
                                                        builder: (context) =>
                                                            FFButtonWidget(
                                                          onPressed: () async {
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (dialogContext) {
                                                                return Dialog(
                                                                  elevation: 0,
                                                                  insetPadding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  alignment: AlignmentDirectional(
                                                                          0.0,
                                                                          0.0)
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
                                                                        CadastroTicketMobileWidget(
                                                                      idTicket:
                                                                          0,
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            );

                                                            safeSetState(() =>
                                                                _model.requestCompleter6 =
                                                                    null);
                                                            await _model
                                                                .waitForRequestCompleted6();
                                                          },
                                                          text: '',
                                                          icon: Icon(
                                                            Icons.add,
                                                            size: 25.0,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.172,
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                0.993,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            iconAlignment:
                                                                IconAlignment
                                                                    .end,
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        5.0,
                                                                        0.0),
                                                            iconColor:
                                                                Colors.white,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleSmallFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w800,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .titleSmallIsCustom,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            hoverColor:
                                                                Colors.white,
                                                            hoverBorderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondary,
                                                            ),
                                                            hoverTextColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                            hoverElevation: 1.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.2,
                                                      constraints:
                                                          BoxConstraints(
                                                        maxHeight: 50.0,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0x00FFFFFF),
                                                      ),
                                                      child: Visibility(
                                                        visible:
                                                            responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                        ),
                                                        child: Builder(
                                                          builder: (context) =>
                                                              FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (dialogContext) {
                                                                  return Dialog(
                                                                    elevation:
                                                                        0,
                                                                    insetPadding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                    alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0)
                                                                        .resolve(
                                                                            Directionality.of(context)),
                                                                    child:
                                                                        GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        FocusScope.of(dialogContext)
                                                                            .unfocus();
                                                                        FocusManager
                                                                            .instance
                                                                            .primaryFocus
                                                                            ?.unfocus();
                                                                      },
                                                                      child:
                                                                          CadastroTicketWidget(
                                                                        idTicket:
                                                                            0,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              );

                                                              safeSetState(() =>
                                                                  _model.requestCompleter6 =
                                                                      null);
                                                              await _model
                                                                  .waitForRequestCompleted6();
                                                            },
                                                            text: 'NOVO TICKET',
                                                            icon: Icon(
                                                              Icons.add,
                                                              size: 25.0,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  1.024,
                                                              height: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .height *
                                                                  1.0,
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
                                                              iconColor:
                                                                  Colors.white,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w800,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                      ),
                                                              elevation: 0.0,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              hoverColor:
                                                                  Colors.white,
                                                              hoverBorderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                              ),
                                                              hoverTextColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                              hoverElevation:
                                                                  1.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 10.0)),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.6,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.05,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                    ),
                                                    child: FutureBuilder<
                                                        List<StatusRow>>(
                                                      future: StatusTable()
                                                          .queryRows(
                                                        queryFn: (q) => q,
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  SpinKitFoldingCube(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 50.0,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<StatusRow>
                                                            dropDownStatusMobile3StatusRowList =
                                                            snapshot.data!;

                                                        return FlutterFlowDropDown<
                                                            String>(
                                                          controller: _model
                                                                  .dropDownStatusMobile3ValueController ??=
                                                              FormFieldController<
                                                                  String>(
                                                            _model.dropDownStatusMobile3Value ??=
                                                                'Todos os Status',
                                                          ),
                                                          options: List<
                                                              String>.from([
                                                            'Todos os Status',
                                                            'Cancelado',
                                                            'Liberada',
                                                            'Em atendimento',
                                                            'Finalizado',
                                                            'Concluído',
                                                            'Abertos'
                                                          ]),
                                                          optionLabels: [
                                                            'Todos os Status',
                                                            'Cancelado',
                                                            'Liberada',
                                                            'Em atendimento',
                                                            'Finalizado',
                                                            'Concluído',
                                                            'Abertos'
                                                          ],
                                                          onChanged:
                                                              (val) async {
                                                            safeSetState(() =>
                                                                _model.dropDownStatusMobile3Value =
                                                                    val);
                                                            safeSetState(() =>
                                                                _model.requestCompleter2 =
                                                                    null);
                                                            safeSetState(() =>
                                                                _model.requestCompleter4 =
                                                                    null);
                                                            safeSetState(() =>
                                                                _model.requestCompleter5 =
                                                                    null);
                                                            await _model
                                                                .waitForRequestCompleted5();
                                                          },
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.48,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                          icon: Icon(
                                                            Icons
                                                                .keyboard_arrow_down_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          elevation: 0.0,
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderWidth: 0.0,
                                                          borderRadius: 8.0,
                                                          margin:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          hidesUnderline: true,
                                                          isOverButton: false,
                                                          isSearchable: false,
                                                          isMultiSelect: false,
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.251,
                                                    height: 43.1,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        safeSetState(() {
                                                          _model
                                                              .inputHostnameTextController
                                                              ?.clear();
                                                          _model
                                                              .inputHostnameMainTextController
                                                              ?.clear();
                                                        });
                                                        safeSetState(() {
                                                          _model
                                                              .dropDownStatusValueController
                                                              ?.reset();
                                                          _model
                                                              .dropDownStatusMobile3ValueController
                                                              ?.reset();
                                                        });
                                                        safeSetState(() => _model
                                                                .requestCompleter6 =
                                                            null);
                                                      },
                                                      text: 'Limpar Filtro',
                                                      options: FFButtonOptions(
                                                        height: 70.3,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
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
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmallIsCustom,
                                                                ),
                                                        elevation: 0.0,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 10.0)),
                                              ),
                                            ].divide(SizedBox(height: 5.0)),
                                          ),
                                        ),
                                      ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                    ))
                                      Expanded(
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.888,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height: 57.55,
                                                  decoration: BoxDecoration(),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.41,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  1.0,
                                                          child: TextFormField(
                                                            controller: _model
                                                                .inputHostnameMainTextController,
                                                            focusNode: _model
                                                                .inputHostnameMainFocusNode,
                                                            onChanged: (_) =>
                                                                EasyDebounce
                                                                    .debounce(
                                                              '_model.inputHostnameMainTextController',
                                                              Duration(
                                                                  milliseconds:
                                                                      500),
                                                              () async {
                                                                safeSetState(() =>
                                                                    _model.requestCompleter6 =
                                                                        null);
                                                                await _model
                                                                    .waitForRequestCompleted6();
                                                                safeSetState(() =>
                                                                    _model.requestCompleter3 =
                                                                        null);
                                                                await _model
                                                                    .waitForRequestCompleted3();
                                                                safeSetState(() =>
                                                                    _model.requestCompleter1 =
                                                                        null);
                                                              },
                                                            ),
                                                            autofocus: false,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              isDense: true,
                                                              labelText:
                                                                  'Pesquisa',
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).labelMediumFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                      ),
                                                              enabledBorder:
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
                                                                            8.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
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
                                                                            8.0),
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
                                                                            8.0),
                                                              ),
                                                              filled: true,
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              prefixIcon: Icon(
                                                                Icons.search,
                                                                size: 20.0,
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
                                                                      18.0,
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
                                                                    .primaryText,
                                                            enableInteractiveSelection:
                                                                true,
                                                            validator: _model
                                                                .inputHostnameMainTextControllerValidator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                        ),
                                                      ),
                                                      Flexible(
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.2,
                                                          constraints:
                                                              BoxConstraints(
                                                            maxHeight: 50.0,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x00FFFFFF),
                                                          ),
                                                          child: Visibility(
                                                            visible:
                                                                responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                              tablet: false,
                                                            ),
                                                            child: Builder(
                                                              builder: (context) =>
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (dialogContext) {
                                                                      return Dialog(
                                                                        elevation:
                                                                            0,
                                                                        insetPadding:
                                                                            EdgeInsets.zero,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        alignment:
                                                                            AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            FocusScope.of(dialogContext).unfocus();
                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                          },
                                                                          child:
                                                                              CadastroTicketWidget(
                                                                            idTicket:
                                                                                0,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  );

                                                                  safeSetState(() =>
                                                                      _model.requestCompleter6 =
                                                                          null);
                                                                  await _model
                                                                      .waitForRequestCompleted6();
                                                                },
                                                                text:
                                                                    'NOVO TICKET',
                                                                icon: Icon(
                                                                  Icons.add,
                                                                  size: 25.0,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.94,
                                                                  height: MediaQuery.sizeOf(
                                                                              context)
                                                                          .height *
                                                                      0.5,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  iconColor:
                                                                      Colors
                                                                          .white,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w800,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                      ),
                                                                  elevation:
                                                                      0.0,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  hoverColor:
                                                                      Colors
                                                                          .white,
                                                                  hoverBorderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                  ),
                                                                  hoverTextColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                  hoverElevation:
                                                                      1.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 10.0)),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.05,
                                                decoration: BoxDecoration(),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.2,
                                                      height: 46.3,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      child: FutureBuilder<
                                                          List<StatusRow>>(
                                                        future: StatusTable()
                                                            .queryRows(
                                                          queryFn: (q) => q,
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                child:
                                                                    SpinKitFoldingCube(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  size: 50.0,
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<StatusRow>
                                                              dropDownStatusStatusRowList =
                                                              snapshot.data!;

                                                          return FlutterFlowDropDown<
                                                              String>(
                                                            controller: _model
                                                                    .dropDownStatusValueController ??=
                                                                FormFieldController<
                                                                    String>(
                                                              _model.dropDownStatusValue ??=
                                                                  'Todos os Status',
                                                            ),
                                                            options: List<
                                                                String>.from([
                                                              'Todos os Status',
                                                              'Cancelado',
                                                              'Liberada',
                                                              'Em atendimento',
                                                              'Finalizado',
                                                              'Concluído',
                                                              'Abertos'
                                                            ]),
                                                            optionLabels: [
                                                              'Todos os Status',
                                                              'Cancelado',
                                                              'Liberada',
                                                              'Em atendimento',
                                                              'Finalizado',
                                                              'Concluído',
                                                              'Abertos'
                                                            ],
                                                            onChanged:
                                                                (val) async {
                                                              safeSetState(() =>
                                                                  _model.dropDownStatusValue =
                                                                      val);
                                                              safeSetState(() =>
                                                                  _model.requestCompleter1 =
                                                                      null);
                                                              await _model
                                                                  .waitForRequestCompleted1();
                                                            },
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.45,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                            icon: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            elevation: 2.0,
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            borderWidth: 0.0,
                                                            borderRadius: 8.0,
                                                            margin:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                            hidesUnderline:
                                                                true,
                                                            isOverButton: false,
                                                            isSearchable: false,
                                                            isMultiSelect:
                                                                false,
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.2,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          safeSetState(() {
                                                            _model
                                                                .inputHostnameMainTextController
                                                                ?.clear();
                                                            _model
                                                                .inputHostnameTextController
                                                                ?.clear();
                                                          });
                                                          safeSetState(() {
                                                            _model
                                                                .dropDownStatusValueController
                                                                ?.reset();
                                                          });
                                                          safeSetState(() =>
                                                              _model.requestCompleter6 =
                                                                  null);
                                                        },
                                                        text: 'Limpar Filtro',
                                                        options:
                                                            FFButtonOptions(
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              double.infinity,
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      16.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily,
                                                                    color: Colors
                                                                        .white,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .titleSmallIsCustom,
                                                                  ),
                                                          elevation: 0.0,
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 10.0)),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 5.0)),
                                          ),
                                        ),
                                      ),
                                  ].divide(SizedBox(width: 10.0)),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 3.2,
                                  height:
                                      MediaQuery.sizeOf(context).height * 3.2,
                                  constraints: BoxConstraints(
                                    minWidth:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                  ),
                                  decoration: BoxDecoration(),
                                  child: Flex(
                                    direction: Axis.vertical,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              1.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                              color: Colors.transparent,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if ((_model.dropDownStatusValue ==
                                                      'Todos os Status') &&
                                                  responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                  ))
                                                Expanded(
                                                  child: FutureBuilder<
                                                      List<
                                                          TicketsComStatusRow>>(
                                                    future: (_model
                                                                .requestCompleter6 ??=
                                                            Completer<
                                                                List<
                                                                    TicketsComStatusRow>>()
                                                              ..complete(
                                                                  TicketsComStatusTable()
                                                                      .queryRows(
                                                                queryFn: (q) =>
                                                                    q.or(
                                                                        "hostname.ilike.${'%${_model.inputHostnameMainTextController.text}%'}, requester_nome.ilike.${'%${_model.inputHostnameMainTextController.text}%'}, nome_colab.ilike.${'%${_model.inputHostnameMainTextController.text}%'}"),
                                                              )))
                                                        .future,
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                SpinKitFoldingCube(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 50.0,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<TicketsComStatusRow>
                                                          containerSfiltroTicketsComStatusRowList =
                                                          snapshot.data!;

                                                      return Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.412,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Builder(
                                                              builder:
                                                                  (context) {
                                                                final ticketDataTable =
                                                                    containerSfiltroTicketsComStatusRowList
                                                                        .map((e) =>
                                                                            e)
                                                                        .toList();

                                                                return FlutterFlowDataTable<
                                                                    TicketsComStatusRow>(
                                                                  controller: _model
                                                                      .dataTableSfiltroController,
                                                                  data:
                                                                      ticketDataTable,
                                                                  columnsBuilder:
                                                                      (onSortChanged) =>
                                                                          [
                                                                    DataColumn2(
                                                                      label: DefaultTextStyle
                                                                          .merge(
                                                                        softWrap:
                                                                            true,
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            FFButtonWidget(
                                                                              onPressed: () {
                                                                                print('Button pressed ...');
                                                                              },
                                                                              text: 'ID',
                                                                              options: FFButtonOptions(
                                                                                height: 40.0,
                                                                                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                iconAlignment: IconAlignment.end,
                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                      color: Colors.white,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                                    ),
                                                                                elevation: 0.0,
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    DataColumn2(
                                                                      label: DefaultTextStyle
                                                                          .merge(
                                                                        softWrap:
                                                                            true,
                                                                        child:
                                                                            FFButtonWidget(
                                                                          onPressed:
                                                                              () {
                                                                            print('Button pressed ...');
                                                                          },
                                                                          text:
                                                                              'Máquina',
                                                                          options:
                                                                              FFButtonOptions(
                                                                            height:
                                                                                40.0,
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                  color: Colors.white,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                                ),
                                                                            elevation:
                                                                                0.0,
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    DataColumn2(
                                                                      label: DefaultTextStyle
                                                                          .merge(
                                                                        softWrap:
                                                                            true,
                                                                        child:
                                                                            FFButtonWidget(
                                                                          onPressed:
                                                                              () {
                                                                            print('Button pressed ...');
                                                                          },
                                                                          text:
                                                                              'Solicitante',
                                                                          options:
                                                                              FFButtonOptions(
                                                                            height:
                                                                                40.0,
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                  color: Colors.white,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                                ),
                                                                            elevation:
                                                                                0.0,
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    DataColumn2(
                                                                      label: DefaultTextStyle
                                                                          .merge(
                                                                        softWrap:
                                                                            true,
                                                                        child:
                                                                            FFButtonWidget(
                                                                          onPressed:
                                                                              () {
                                                                            print('Button pressed ...');
                                                                          },
                                                                          text:
                                                                              'Data',
                                                                          options:
                                                                              FFButtonOptions(
                                                                            height:
                                                                                40.0,
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                  color: Colors.white,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                                ),
                                                                            elevation:
                                                                                0.0,
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    DataColumn2(
                                                                      label: DefaultTextStyle
                                                                          .merge(
                                                                        softWrap:
                                                                            true,
                                                                        child:
                                                                            FFButtonWidget(
                                                                          onPressed:
                                                                              () {
                                                                            print('Button pressed ...');
                                                                          },
                                                                          text:
                                                                              'Responsável',
                                                                          options:
                                                                              FFButtonOptions(
                                                                            height:
                                                                                40.0,
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                  color: Colors.white,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                                ),
                                                                            elevation:
                                                                                0.0,
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    DataColumn2(
                                                                      label: DefaultTextStyle
                                                                          .merge(
                                                                        softWrap:
                                                                            true,
                                                                        child:
                                                                            Text(
                                                                          'Telefone',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                color: Colors.white,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    DataColumn2(
                                                                      label: DefaultTextStyle
                                                                          .merge(
                                                                        softWrap:
                                                                            true,
                                                                        child:
                                                                            Text(
                                                                          'Status',
                                                                          textAlign:
                                                                              TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    DataColumn2(
                                                                      label: DefaultTextStyle
                                                                          .merge(
                                                                        softWrap:
                                                                            true,
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Text(
                                                                              'Ações',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      fixedWidth:
                                                                          150.0,
                                                                    ),
                                                                  ],
                                                                  dataRowBuilder: (ticketDataTableItem,
                                                                          ticketDataTableIndex,
                                                                          selected,
                                                                          onSelectChanged) =>
                                                                      DataRow(
                                                                    color:
                                                                        MaterialStateProperty
                                                                            .all(
                                                                      ticketDataTableIndex %
                                                                                  2 ==
                                                                              0
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .secondaryBackground
                                                                          : FlutterFlowTheme.of(context)
                                                                              .primaryBackground,
                                                                    ),
                                                                    cells: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            ticketDataTableItem.ticketId!.toString(),
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children:
                                                                            [
                                                                          if (ticketDataTableItem.plat ==
                                                                              'darwin')
                                                                            Icon(
                                                                              Icons.apple,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              size: 28.0,
                                                                            ),
                                                                          if (ticketDataTableItem.deviceType ==
                                                                              'coletor de dados')
                                                                            Icon(
                                                                              Icons.install_mobile,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              size: 28.0,
                                                                            ),
                                                                          if (ticketDataTableItem.deviceType ==
                                                                              'Impressora')
                                                                            Icon(
                                                                              Icons.print,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              size: 28.0,
                                                                            ),
                                                                          if (ticketDataTableItem.deviceType ==
                                                                              'Desktop')
                                                                            FaIcon(
                                                                              FontAwesomeIcons.server,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              size: 28.0,
                                                                            ),
                                                                          if (ticketDataTableItem.deviceType ==
                                                                              'Servidor')
                                                                            FaIcon(
                                                                              FontAwesomeIcons.database,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              size: 28.0,
                                                                            ),
                                                                          if (ticketDataTableItem.deviceType ==
                                                                              'Mobile')
                                                                            FaIcon(
                                                                              FontAwesomeIcons.mobileAlt,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              size: 28.0,
                                                                            ),
                                                                          if (ticketDataTableItem.deviceType ==
                                                                              'Notebook')
                                                                            Icon(
                                                                              Icons.computer,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              size: 28.0,
                                                                            ),
                                                                          Text(
                                                                            valueOrDefault<String>(
                                                                              ticketDataTableItem.hostname,
                                                                              '[hostname]',
                                                                            ).maybeHandleOverflow(
                                                                              maxChars: 11,
                                                                            ),
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                ),
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                          ),
                                                                        ].divide(SizedBox(width: 2.0)),
                                                                      ),
                                                                      Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          ticketDataTableItem
                                                                              .requesterNome,
                                                                          '[requester_nome]',
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.justify,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                            ),
                                                                      ),
                                                                      Text(
                                                                        dateTimeFormat(
                                                                          "dd/MM/yy -HH:mm",
                                                                          ticketDataTableItem
                                                                              .createdAt!,
                                                                          locale:
                                                                              FFLocalizations.of(context).languageCode,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.justify,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                            ),
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            valueOrDefault<String>(
                                                                              ticketDataTableItem.nomeColab,
                                                                              '[nome]',
                                                                            ),
                                                                            textAlign:
                                                                                TextAlign.justify,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          ticketDataTableItem
                                                                              .requesterTelefone,
                                                                          '[telefone]',
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.justify,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                            ),
                                                                      ),
                                                                      Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          ticketDataTableItem
                                                                              .statusNome,
                                                                          '[status]',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                            ),
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                FFButtonWidget(
                                                                              onPressed: () async {
                                                                                FFAppState().hostnameEdit = ticketDataTableItem.hostname!;
                                                                                FFAppState().nomeColabEdit = ticketDataTableItem.nomeColab!;
                                                                                FFAppState().solicitanteEdit = ticketDataTableItem.requesterNome!;
                                                                                FFAppState().telefoneColabEdit = ticketDataTableItem.requesterTelefone!;
                                                                                FFAppState().descricaoEdit = ticketDataTableItem.descricao!;
                                                                                safeSetState(() {});
                                                                                await showModalBottomSheet(
                                                                                  isScrollControlled: true,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  enableDrag: false,
                                                                                  context: context,
                                                                                  builder: (context) {
                                                                                    return GestureDetector(
                                                                                      onTap: () {
                                                                                        FocusScope.of(context).unfocus();
                                                                                        FocusManager.instance.primaryFocus?.unfocus();
                                                                                      },
                                                                                      child: Padding(
                                                                                        padding: MediaQuery.viewInsetsOf(context),
                                                                                        child: EditTicketWidget(
                                                                                          idTicket: ticketDataTableItem.ticketId,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ).then((value) => safeSetState(() {}));

                                                                                safeSetState(() => _model.requestCompleter6 = null);
                                                                                await _model.waitForRequestCompleted6();
                                                                              },
                                                                              text: '',
                                                                              icon: FaIcon(
                                                                                FontAwesomeIcons.pen,
                                                                                size: 20.0,
                                                                              ),
                                                                              options: FFButtonOptions(
                                                                                width: 50.0,
                                                                                height: 50.0,
                                                                                padding: EdgeInsets.all(0.0),
                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                iconColor: FlutterFlowTheme.of(context).primaryText,
                                                                                color: Color(0x00D74F30),
                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                      color: Colors.white,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                                    ),
                                                                                elevation: 0.0,
                                                                                borderRadius: BorderRadius.circular(64.0),
                                                                                hoverTextColor: FlutterFlowTheme.of(context).alternate,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          FFButtonWidget(
                                                                            onPressed: (ticketDataTableItem.statusNome == 'Cancelado')
                                                                                ? null
                                                                                : () async {
                                                                                    await showModalBottomSheet(
                                                                                      isScrollControlled: true,
                                                                                      backgroundColor: Colors.transparent,
                                                                                      enableDrag: false,
                                                                                      context: context,
                                                                                      builder: (context) {
                                                                                        return GestureDetector(
                                                                                          onTap: () {
                                                                                            FocusScope.of(context).unfocus();
                                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                                          },
                                                                                          child: Padding(
                                                                                            padding: MediaQuery.viewInsetsOf(context),
                                                                                            child: DialogDeleteWidget(
                                                                                              idTicket: ticketDataTableItem.ticketId!,
                                                                                              statusAtual: ticketDataTableItem.statusNome!,
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    ).then((value) => safeSetState(() {}));

                                                                                    safeSetState(() => _model.requestCompleter6 = null);
                                                                                    await _model.waitForRequestCompleted6();
                                                                                  },
                                                                            text:
                                                                                '',
                                                                            icon:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.trash,
                                                                              size: 20.0,
                                                                            ),
                                                                            options:
                                                                                FFButtonOptions(
                                                                              width: 50.0,
                                                                              height: 50.0,
                                                                              padding: EdgeInsets.all(0.0),
                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                              iconColor: FlutterFlowTheme.of(context).primaryText,
                                                                              color: Color(0x00D74F30),
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                    color: Colors.white,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                                  ),
                                                                              elevation: 0.0,
                                                                              borderRadius: BorderRadius.circular(60.0),
                                                                              disabledTextColor: Color(0x73121926),
                                                                              hoverTextColor: FlutterFlowTheme.of(context).error,
                                                                            ),
                                                                          ),
                                                                          FFButtonWidget(
                                                                            onPressed:
                                                                                () async {
                                                                              FFAppState().hostnameEdit = ticketDataTableItem.hostname!;
                                                                              FFAppState().nomeColabEdit = ticketDataTableItem.nomeColab!;
                                                                              FFAppState().solicitanteEdit = ticketDataTableItem.requesterNome!;
                                                                              FFAppState().telefoneColabEdit = ticketDataTableItem.requesterTelefone!;
                                                                              FFAppState().descricaoEdit = ticketDataTableItem.descricao!;
                                                                              FFAppState().statusTicket = ticketDataTableItem.statusNome!;
                                                                              FFAppState().ViewComentario = true;
                                                                              safeSetState(() {});
                                                                              await showModalBottomSheet(
                                                                                isScrollControlled: true,
                                                                                backgroundColor: Colors.transparent,
                                                                                enableDrag: false,
                                                                                context: context,
                                                                                builder: (context) {
                                                                                  return GestureDetector(
                                                                                    onTap: () {
                                                                                      FocusScope.of(context).unfocus();
                                                                                      FocusManager.instance.primaryFocus?.unfocus();
                                                                                    },
                                                                                    child: Padding(
                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                      child: DetailsTicketWidget(
                                                                                        idTicket: ticketDataTableItem.ticketId!,
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ).then((value) => safeSetState(() {}));
                                                                            },
                                                                            text:
                                                                                '',
                                                                            icon:
                                                                                Icon(
                                                                              Icons.arrow_forward_ios,
                                                                              size: 25.0,
                                                                            ),
                                                                            options:
                                                                                FFButtonOptions(
                                                                              width: 55.0,
                                                                              height: 50.0,
                                                                              padding: EdgeInsets.all(0.0),
                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                              iconColor: FlutterFlowTheme.of(context).primaryText,
                                                                              color: Color(0x00D74F30),
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                    color: Colors.white,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                                  ),
                                                                              elevation: 0.0,
                                                                              borderRadius: BorderRadius.circular(60.0),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ]
                                                                        .map((c) =>
                                                                            DataCell(c))
                                                                        .toList(),
                                                                  ),
                                                                  paginated:
                                                                      true,
                                                                  selectable:
                                                                      false,
                                                                  hidePaginator:
                                                                      false,
                                                                  showFirstLastButtons:
                                                                      true,
                                                                  minWidth: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return 500.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium) {
                                                                      return 1080.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointLarge) {
                                                                      return 1080.0;
                                                                    } else {
                                                                      return 1080.0;
                                                                    }
                                                                  }(),
                                                                  columnSpacing:
                                                                      0.0,
                                                                  headingRowColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  addHorizontalDivider:
                                                                      true,
                                                                  addTopAndBottomDivider:
                                                                      false,
                                                                  hideDefaultHorizontalDivider:
                                                                      true,
                                                                  horizontalDividerColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .lineColor,
                                                                  addVerticalDivider:
                                                                      false,
                                                                );
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              if ((_model.dropDownStatusMobile3Value ==
                                                      'Todos os Status') &&
                                                  responsiveVisibility(
                                                    context: context,
                                                    tabletLandscape: false,
                                                    desktop: false,
                                                  ))
                                                Expanded(
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: FutureBuilder<
                                                        List<
                                                            TicketsComStatusRow>>(
                                                      future: (_model
                                                                  .requestCompleter5 ??=
                                                              Completer<
                                                                  List<
                                                                      TicketsComStatusRow>>()
                                                                ..complete(
                                                                    TicketsComStatusTable()
                                                                        .queryRows(
                                                                  queryFn: (q) =>
                                                                      q.ilike(
                                                                    'hostname',
                                                                    '%${_model.inputHostnameTextController.text}%',
                                                                  ),
                                                                )))
                                                          .future,
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  SpinKitFoldingCube(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 50.0,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<TicketsComStatusRow>
                                                            containerSfiltroMobileTicketsComStatusRowList =
                                                            snapshot.data!;

                                                        return SafeArea(
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                1.0,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  1.0,
                                                              height: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .height *
                                                                  1.0,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Builder(
                                                                builder:
                                                                    (context) {
                                                                  final ticketDataTable =
                                                                      containerSfiltroMobileTicketsComStatusRowList
                                                                          .toList();

                                                                  return FlutterFlowDataTable<
                                                                      TicketsComStatusRow>(
                                                                    controller:
                                                                        _model
                                                                            .dataTableFiltroAbertoMobileController1,
                                                                    data:
                                                                        ticketDataTable,
                                                                    columnsBuilder:
                                                                        (onSortChanged) =>
                                                                            [
                                                                      DataColumn2(
                                                                        label: DefaultTextStyle
                                                                            .merge(
                                                                          softWrap:
                                                                              true,
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Text(
                                                                                'Máquina',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                    dataRowBuilder: (ticketDataTableItem,
                                                                            ticketDataTableIndex,
                                                                            selected,
                                                                            onSelectChanged) =>
                                                                        DataRow(
                                                                      color: MaterialStateProperty
                                                                          .all(
                                                                        ticketDataTableIndex % 2 ==
                                                                                0
                                                                            ? FlutterFlowTheme.of(context).secondaryBackground
                                                                            : FlutterFlowTheme.of(context).primaryBackground,
                                                                      ),
                                                                      cells: [
                                                                        Container(
                                                                          width:
                                                                              MediaQuery.sizeOf(context).width * 1.0,
                                                                          height:
                                                                              MediaQuery.sizeOf(context).height * 1.0,
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children:
                                                                                [
                                                                              if (ticketDataTableItem.plat == 'darwin')
                                                                                Icon(
                                                                                  Icons.apple,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  size: 28.0,
                                                                                ),
                                                                              if (ticketDataTableItem.deviceType == 'coletor de dados')
                                                                                Icon(
                                                                                  Icons.install_mobile,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  size: 28.0,
                                                                                ),
                                                                              if (ticketDataTableItem.deviceType == 'Impressora')
                                                                                Icon(
                                                                                  Icons.print,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  size: 28.0,
                                                                                ),
                                                                              if (ticketDataTableItem.deviceType == 'Desktop')
                                                                                FaIcon(
                                                                                  FontAwesomeIcons.server,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  size: 28.0,
                                                                                ),
                                                                              if (ticketDataTableItem.deviceType == 'Servidor')
                                                                                FaIcon(
                                                                                  FontAwesomeIcons.database,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  size: 28.0,
                                                                                ),
                                                                              if (ticketDataTableItem.deviceType == 'Mobile')
                                                                                FaIcon(
                                                                                  FontAwesomeIcons.mobileAlt,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  size: 28.0,
                                                                                ),
                                                                              if (ticketDataTableItem.deviceType == 'Notebook')
                                                                                Icon(
                                                                                  Icons.computer,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  size: 28.0,
                                                                                ),
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsets.all(5.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          Text(
                                                                                            valueOrDefault<String>(
                                                                                              ticketDataTableItem.ticketId?.toString(),
                                                                                              '[id]',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                ),
                                                                                          ),
                                                                                          Text(
                                                                                            valueOrDefault<String>(
                                                                                              ticketDataTableItem.hostname,
                                                                                              '[hostname]',
                                                                                            ).maybeHandleOverflow(
                                                                                              maxChars: 10,
                                                                                              replacement: '…',
                                                                                            ),
                                                                                            textAlign: TextAlign.start,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              decoration: BoxDecoration(),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsets.all(10.0),
                                                                                                child: DropDownMobileWidget(
                                                                                                  key: Key('Keydvn_${ticketDataTableIndex}_of_${ticketDataTable.length}'),
                                                                                                  parameter2: ticketDataTableItem.ticketId,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ].divide(SizedBox(width: 5.0)),
                                                                                      ),
                                                                                      Text(
                                                                                        valueOrDefault<String>(
                                                                                          ticketDataTableItem.requesterNome,
                                                                                          '[solicitante]',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ].divide(SizedBox(width: 2.0)),
                                                                          ),
                                                                        ),
                                                                      ]
                                                                          .map((c) =>
                                                                              DataCell(c))
                                                                          .toList(),
                                                                    ),
                                                                    paginated:
                                                                        true,
                                                                    selectable:
                                                                        false,
                                                                    hidePaginator:
                                                                        false,
                                                                    showFirstLastButtons:
                                                                        true,
                                                                    height:
                                                                        400.0,
                                                                    minWidth:
                                                                        () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return 500.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return 1080.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 1080.0;
                                                                      } else {
                                                                        return 1080.0;
                                                                      }
                                                                    }(),
                                                                    headingRowHeight:
                                                                        40.0,
                                                                    dataRowHeight:
                                                                        80.0,
                                                                    columnSpacing:
                                                                        0.0,
                                                                    headingRowColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    addHorizontalDivider:
                                                                        true,
                                                                    addTopAndBottomDivider:
                                                                        false,
                                                                    hideDefaultHorizontalDivider:
                                                                        true,
                                                                    horizontalDividerColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .lineColor,
                                                                    addVerticalDivider:
                                                                        false,
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              if ((_model.dropDownStatusValue ==
                                                      'Abertos') &&
                                                  responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                  ))
                                                Expanded(
                                                  child: FutureBuilder<
                                                      List<
                                                          TicketsComStatusRow>>(
                                                    future: (_model
                                                                .requestCompleter3 ??=
                                                            Completer<
                                                                List<
                                                                    TicketsComStatusRow>>()
                                                              ..complete(
                                                                  TicketsComStatusTable()
                                                                      .queryRows(
                                                                queryFn: (q) =>
                                                                    q.or(
                                                                        "hostname.ilike.${'%${_model.inputHostnameMainTextController.text}%'}, status_id.in.(2, 3), requester_nome.ilike.${'%${_model.inputHostnameMainTextController.text}%'}"),
                                                              )))
                                                        .future,
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                SpinKitFoldingCube(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 50.0,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<TicketsComStatusRow>
                                                          containerFiltroAbertoTicketsComStatusRowList =
                                                          snapshot.data!;

                                                      return Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.425,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Builder(
                                                          builder: (context) {
                                                            final ticketDataTable =
                                                                containerFiltroAbertoTicketsComStatusRowList
                                                                    .toList();

                                                            return FlutterFlowDataTable<
                                                                TicketsComStatusRow>(
                                                              controller: _model
                                                                  .dataTableFiltroAbertoController,
                                                              data:
                                                                  ticketDataTable,
                                                              columnsBuilder:
                                                                  (onSortChanged) =>
                                                                      [
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        FFButtonWidget(
                                                                          onPressed:
                                                                              () {
                                                                            print('Button pressed ...');
                                                                          },
                                                                          text:
                                                                              'ID',
                                                                          options:
                                                                              FFButtonOptions(
                                                                            height:
                                                                                40.0,
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            iconAlignment:
                                                                                IconAlignment.end,
                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                  color: Colors.white,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                                ),
                                                                            elevation:
                                                                                0.0,
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        FFButtonWidget(
                                                                      onPressed:
                                                                          () {
                                                                        print(
                                                                            'Button pressed ...');
                                                                      },
                                                                      text:
                                                                          'Máquina',
                                                                      options:
                                                                          FFButtonOptions(
                                                                        height:
                                                                            40.0,
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                              color: Colors.white,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                            ),
                                                                        elevation:
                                                                            0.0,
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        FFButtonWidget(
                                                                      onPressed:
                                                                          () {
                                                                        print(
                                                                            'Button pressed ...');
                                                                      },
                                                                      text:
                                                                          'Solicitante',
                                                                      options:
                                                                          FFButtonOptions(
                                                                        height:
                                                                            40.0,
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                              color: Colors.white,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                            ),
                                                                        elevation:
                                                                            0.0,
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        FFButtonWidget(
                                                                      onPressed:
                                                                          () {
                                                                        print(
                                                                            'Button pressed ...');
                                                                      },
                                                                      text:
                                                                          'Data',
                                                                      options:
                                                                          FFButtonOptions(
                                                                        height:
                                                                            40.0,
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                              color: Colors.white,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                            ),
                                                                        elevation:
                                                                            0.0,
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child:
                                                                        FFButtonWidget(
                                                                      onPressed:
                                                                          () {
                                                                        print(
                                                                            'Button pressed ...');
                                                                      },
                                                                      text:
                                                                          'Responsável',
                                                                      options:
                                                                          FFButtonOptions(
                                                                        height:
                                                                            40.0,
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                              color: Colors.white,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                            ),
                                                                        elevation:
                                                                            0.0,
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child: Text(
                                                                      'Telefone',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).labelLargeFamily,
                                                                            color:
                                                                                Colors.white,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child: Text(
                                                                      'Status',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          'Ações',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  fixedWidth:
                                                                      150.0,
                                                                ),
                                                              ],
                                                              dataRowBuilder:
                                                                  (ticketDataTableItem,
                                                                          ticketDataTableIndex,
                                                                          selected,
                                                                          onSelectChanged) =>
                                                                      DataRow(
                                                                color:
                                                                    MaterialStateProperty
                                                                        .all(
                                                                  ticketDataTableIndex %
                                                                              2 ==
                                                                          0
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                ),
                                                                cells: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        ticketDataTableItem
                                                                            .ticketId!
                                                                            .toString(),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      if (ticketDataTableItem
                                                                              .plat ==
                                                                          'darwin')
                                                                        Icon(
                                                                          Icons
                                                                              .apple,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          size:
                                                                              28.0,
                                                                        ),
                                                                      if (ticketDataTableItem
                                                                              .deviceType ==
                                                                          'coletor de dados')
                                                                        Icon(
                                                                          Icons
                                                                              .install_mobile,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          size:
                                                                              28.0,
                                                                        ),
                                                                      if (ticketDataTableItem
                                                                              .deviceType ==
                                                                          'Impressora')
                                                                        Icon(
                                                                          Icons
                                                                              .print,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          size:
                                                                              28.0,
                                                                        ),
                                                                      if (ticketDataTableItem
                                                                              .deviceType ==
                                                                          'Desktop')
                                                                        FaIcon(
                                                                          FontAwesomeIcons
                                                                              .server,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          size:
                                                                              28.0,
                                                                        ),
                                                                      if (ticketDataTableItem
                                                                              .deviceType ==
                                                                          'Servidor')
                                                                        FaIcon(
                                                                          FontAwesomeIcons
                                                                              .database,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          size:
                                                                              28.0,
                                                                        ),
                                                                      if (ticketDataTableItem
                                                                              .deviceType ==
                                                                          'Mobile')
                                                                        FaIcon(
                                                                          FontAwesomeIcons
                                                                              .mobileAlt,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          size:
                                                                              28.0,
                                                                        ),
                                                                      if (ticketDataTableItem
                                                                              .deviceType ==
                                                                          'Notebook')
                                                                        Icon(
                                                                          Icons
                                                                              .computer,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          size:
                                                                              28.0,
                                                                        ),
                                                                      Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          ticketDataTableItem
                                                                              .hostname,
                                                                          '[hostname]',
                                                                        ).maybeHandleOverflow(
                                                                          maxChars:
                                                                              10,
                                                                          replacement:
                                                                              '…',
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                            ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            2.0)),
                                                                  ),
                                                                  Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      ticketDataTableItem
                                                                          .requesterNome,
                                                                      '[requester_nome]',
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .justify,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    dateTimeFormat(
                                                                      "dd/MM/yy -HH:mm",
                                                                      ticketDataTableItem
                                                                          .createdAt!,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .justify,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                        ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          ticketDataTableItem
                                                                              .nomeColab,
                                                                          '[nome]',
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.justify,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      ticketDataTableItem
                                                                          .requesterTelefone,
                                                                      '[telefone]',
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .justify,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      ticketDataTableItem
                                                                          .statusNome,
                                                                      '[status]',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                        ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            FFAppState().hostnameEdit =
                                                                                ticketDataTableItem.hostname!;
                                                                            FFAppState().nomeColabEdit =
                                                                                ticketDataTableItem.nomeColab!;
                                                                            FFAppState().solicitanteEdit =
                                                                                ticketDataTableItem.requesterNome!;
                                                                            FFAppState().telefoneColabEdit =
                                                                                ticketDataTableItem.requesterTelefone!;
                                                                            FFAppState().descricaoEdit =
                                                                                ticketDataTableItem.descricao!;
                                                                            safeSetState(() {});
                                                                            await showModalBottomSheet(
                                                                              isScrollControlled: true,
                                                                              backgroundColor: Colors.transparent,
                                                                              enableDrag: false,
                                                                              context: context,
                                                                              builder: (context) {
                                                                                return GestureDetector(
                                                                                  onTap: () {
                                                                                    FocusScope.of(context).unfocus();
                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                  },
                                                                                  child: Padding(
                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                    child: EditTicketWidget(
                                                                                      idTicket: ticketDataTableItem.ticketId,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ).then((value) =>
                                                                                safeSetState(() {}));

                                                                            safeSetState(() =>
                                                                                _model.requestCompleter3 = null);
                                                                            await _model.waitForRequestCompleted3();
                                                                          },
                                                                          text:
                                                                              '',
                                                                          icon:
                                                                              FaIcon(
                                                                            FontAwesomeIcons.pen,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            padding:
                                                                                EdgeInsets.all(0.0),
                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            iconColor:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            color:
                                                                                Color(0x00D74F30),
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                  color: Colors.white,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                                ),
                                                                            elevation:
                                                                                0.0,
                                                                            borderRadius:
                                                                                BorderRadius.circular(64.0),
                                                                            hoverTextColor:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      FFButtonWidget(
                                                                        onPressed:
                                                                            () async {
                                                                          await showModalBottomSheet(
                                                                            isScrollControlled:
                                                                                true,
                                                                            backgroundColor:
                                                                                Colors.transparent,
                                                                            enableDrag:
                                                                                false,
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (context) {
                                                                              return GestureDetector(
                                                                                onTap: () {
                                                                                  FocusScope.of(context).unfocus();
                                                                                  FocusManager.instance.primaryFocus?.unfocus();
                                                                                },
                                                                                child: Padding(
                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                  child: DialogDeleteWidget(
                                                                                    idTicket: ticketDataTableItem.ticketId!,
                                                                                    statusAtual: ticketDataTableItem.statusNome!,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ).then((value) =>
                                                                              safeSetState(() {}));

                                                                          safeSetState(() =>
                                                                              _model.requestCompleter3 = null);
                                                                          await _model
                                                                              .waitForRequestCompleted3();
                                                                        },
                                                                        text:
                                                                            '',
                                                                        icon:
                                                                            FaIcon(
                                                                          FontAwesomeIcons
                                                                              .trash,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                        options:
                                                                            FFButtonOptions(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          padding:
                                                                              EdgeInsets.all(0.0),
                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          iconColor:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          color:
                                                                              Color(0x00D74F30),
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                color: Colors.white,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                              ),
                                                                          elevation:
                                                                              0.0,
                                                                          borderRadius:
                                                                              BorderRadius.circular(60.0),
                                                                          hoverTextColor:
                                                                              FlutterFlowTheme.of(context).error,
                                                                        ),
                                                                      ),
                                                                      FFButtonWidget(
                                                                        onPressed:
                                                                            () async {
                                                                          FFAppState().hostnameEdit =
                                                                              ticketDataTableItem.hostname!;
                                                                          FFAppState().nomeColabEdit =
                                                                              ticketDataTableItem.nomeColab!;
                                                                          FFAppState().solicitanteEdit =
                                                                              ticketDataTableItem.requesterNome!;
                                                                          FFAppState().telefoneColabEdit =
                                                                              ticketDataTableItem.requesterTelefone!;
                                                                          FFAppState().descricaoEdit =
                                                                              ticketDataTableItem.descricao!;
                                                                          FFAppState().statusTicket =
                                                                              ticketDataTableItem.statusNome!;
                                                                          FFAppState().ViewComentario =
                                                                              true;
                                                                          safeSetState(
                                                                              () {});
                                                                          await showModalBottomSheet(
                                                                            isScrollControlled:
                                                                                true,
                                                                            backgroundColor:
                                                                                Colors.transparent,
                                                                            enableDrag:
                                                                                false,
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (context) {
                                                                              return GestureDetector(
                                                                                onTap: () {
                                                                                  FocusScope.of(context).unfocus();
                                                                                  FocusManager.instance.primaryFocus?.unfocus();
                                                                                },
                                                                                child: Padding(
                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                  child: DetailsTicketWidget(
                                                                                    idTicket: ticketDataTableItem.ticketId!,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ).then((value) =>
                                                                              safeSetState(() {}));
                                                                        },
                                                                        text:
                                                                            '',
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .arrow_forward_ios,
                                                                          size:
                                                                              25.0,
                                                                        ),
                                                                        options:
                                                                            FFButtonOptions(
                                                                          width:
                                                                              55.0,
                                                                          height:
                                                                              50.0,
                                                                          padding:
                                                                              EdgeInsets.all(0.0),
                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          iconColor:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          color:
                                                                              Color(0x00D74F30),
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                color: Colors.white,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                              ),
                                                                          elevation:
                                                                              0.0,
                                                                          borderRadius:
                                                                              BorderRadius.circular(60.0),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ]
                                                                    .map((c) =>
                                                                        DataCell(
                                                                            c))
                                                                    .toList(),
                                                              ),
                                                              paginated: true,
                                                              selectable: false,
                                                              hidePaginator:
                                                                  false,
                                                              showFirstLastButtons:
                                                                  true,
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  1.0,
                                                              minWidth: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 500.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 1080.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge) {
                                                                  return 1080.0;
                                                                } else {
                                                                  return 1080.0;
                                                                }
                                                              }(),
                                                              columnSpacing:
                                                                  0.0,
                                                              headingRowColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              addHorizontalDivider:
                                                                  true,
                                                              addTopAndBottomDivider:
                                                                  false,
                                                              hideDefaultHorizontalDivider:
                                                                  true,
                                                              horizontalDividerColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                              addVerticalDivider:
                                                                  false,
                                                            );
                                                          },
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              if ((_model.dropDownStatusMobile3Value ==
                                                      'Abertos') &&
                                                  responsiveVisibility(
                                                    context: context,
                                                    tabletLandscape: false,
                                                    desktop: false,
                                                  ))
                                                Expanded(
                                                  child: FutureBuilder<
                                                      List<
                                                          TicketsComStatusRow>>(
                                                    future: (_model
                                                                .requestCompleter4 ??=
                                                            Completer<
                                                                List<
                                                                    TicketsComStatusRow>>()
                                                              ..complete(
                                                                  TicketsComStatusTable()
                                                                      .queryRows(
                                                                queryFn: (q) =>
                                                                    q.or(
                                                                        "hostname.ilike.${'%${_model.inputHostnameTextController.text}%'}, status_id.in.(2, 3), requester_nome.ilike.${'%${_model.inputHostnameTextController.text}%'}"),
                                                              )))
                                                        .future,
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                SpinKitFoldingCube(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 50.0,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<TicketsComStatusRow>
                                                          containerFiltroAbertoMobileTicketsComStatusRowList =
                                                          snapshot.data!;

                                                      return Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  1.0,
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  1.0,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Builder(
                                                            builder: (context) {
                                                              final ticketDataTable =
                                                                  containerFiltroAbertoMobileTicketsComStatusRowList
                                                                      .toList();

                                                              return FlutterFlowDataTable<
                                                                  TicketsComStatusRow>(
                                                                controller: _model
                                                                    .dataTableFiltroAbertoMobileController2,
                                                                data:
                                                                    ticketDataTable,
                                                                columnsBuilder:
                                                                    (onSortChanged) =>
                                                                        [
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            'Máquina',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Text(
                                                                              'Ações',
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    color: Colors.white,
                                                                                    fontSize: 16.0,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                                dataRowBuilder: (ticketDataTableItem,
                                                                        ticketDataTableIndex,
                                                                        selected,
                                                                        onSelectChanged) =>
                                                                    DataRow(
                                                                  color:
                                                                      MaterialStateProperty
                                                                          .all(
                                                                    ticketDataTableIndex %
                                                                                2 ==
                                                                            0
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .secondaryBackground
                                                                        : FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                  ),
                                                                  cells: [
                                                                    Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          1.0,
                                                                      height:
                                                                          MediaQuery.sizeOf(context).height *
                                                                              1.0,
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children:
                                                                            [
                                                                          if (ticketDataTableItem.plat ==
                                                                              'darwin')
                                                                            Icon(
                                                                              Icons.apple,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              size: 28.0,
                                                                            ),
                                                                          if (ticketDataTableItem.deviceType ==
                                                                              'coletor de dados')
                                                                            Icon(
                                                                              Icons.install_mobile,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              size: 28.0,
                                                                            ),
                                                                          if (ticketDataTableItem.deviceType ==
                                                                              'Impressora')
                                                                            Icon(
                                                                              Icons.print,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              size: 28.0,
                                                                            ),
                                                                          if (ticketDataTableItem.deviceType ==
                                                                              'Desktop')
                                                                            FaIcon(
                                                                              FontAwesomeIcons.server,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              size: 28.0,
                                                                            ),
                                                                          if (ticketDataTableItem.deviceType ==
                                                                              'Servidor')
                                                                            FaIcon(
                                                                              FontAwesomeIcons.database,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              size: 28.0,
                                                                            ),
                                                                          if (ticketDataTableItem.deviceType ==
                                                                              'Mobile')
                                                                            FaIcon(
                                                                              FontAwesomeIcons.mobileAlt,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              size: 28.0,
                                                                            ),
                                                                          if (ticketDataTableItem.deviceType ==
                                                                              'Notebook')
                                                                            Icon(
                                                                              Icons.computer,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              size: 28.0,
                                                                            ),
                                                                          Expanded(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Text(
                                                                                      valueOrDefault<String>(
                                                                                        ticketDataTableItem.ticketId?.toString(),
                                                                                        '[id]',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                          ),
                                                                                    ),
                                                                                    Text(
                                                                                      valueOrDefault<String>(
                                                                                        ticketDataTableItem.hostname,
                                                                                        '[hostname]',
                                                                                      ).maybeHandleOverflow(
                                                                                        maxChars: 10,
                                                                                        replacement: '…',
                                                                                      ),
                                                                                      textAlign: TextAlign.start,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                          ),
                                                                                    ),
                                                                                  ].divide(SizedBox(width: 5.0)),
                                                                                ),
                                                                                Text(
                                                                                  valueOrDefault<String>(
                                                                                    ticketDataTableItem.requesterNome,
                                                                                    '[solicitante]',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 2.0)),
                                                                      ),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Container(
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                EdgeInsets.all(10.0),
                                                                            child:
                                                                                DropDownMobileWidget(
                                                                              key: Key('Keyi7w_${ticketDataTableIndex}_of_${ticketDataTable.length}'),
                                                                              parameter2: ticketDataTableItem.ticketId,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ]
                                                                      .map((c) =>
                                                                          DataCell(
                                                                              c))
                                                                      .toList(),
                                                                ),
                                                                paginated: true,
                                                                selectable:
                                                                    false,
                                                                hidePaginator:
                                                                    false,
                                                                showFirstLastButtons:
                                                                    true,
                                                                height: 300.0,
                                                                minWidth: () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall) {
                                                                    return 500.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointMedium) {
                                                                    return 1080.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointLarge) {
                                                                    return 1080.0;
                                                                  } else {
                                                                    return 1080.0;
                                                                  }
                                                                }(),
                                                                headingRowHeight:
                                                                    50.0,
                                                                dataRowHeight:
                                                                    70.0,
                                                                columnSpacing:
                                                                    0.0,
                                                                headingRowColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                addHorizontalDivider:
                                                                    true,
                                                                addTopAndBottomDivider:
                                                                    false,
                                                                hideDefaultHorizontalDivider:
                                                                    true,
                                                                horizontalDividerColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                addVerticalDivider:
                                                                    false,
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              if (((_model.dropDownStatusValue !=
                                                          'Todos os Status') &&
                                                      (_model.dropDownStatusValue !=
                                                          'Abertos')) &&
                                                  responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                  ))
                                                Expanded(
                                                  child: FutureBuilder<
                                                      List<
                                                          TicketsComStatusRow>>(
                                                    future: (_model
                                                                .requestCompleter1 ??=
                                                            Completer<
                                                                List<
                                                                    TicketsComStatusRow>>()
                                                              ..complete(
                                                                  TicketsComStatusTable()
                                                                      .queryRows(
                                                                queryFn: (q) =>
                                                                    q.or(
                                                                        "status_nome.eq.${_model.dropDownStatusValue}, hostname.ilike.${'%${_model.inputHostnameMainTextController.text}%'}, requester_nome.ilike.${'%${_model.inputHostnameMainTextController.text}%'}, requester_nome.eq.${'%${_model.inputHostnameMainTextController.text}%'}"),
                                                              )))
                                                        .future,
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                SpinKitFoldingCube(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 50.0,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<TicketsComStatusRow>
                                                          containerFiltroTicketsComStatusRowList =
                                                          snapshot.data!;

                                                      return Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.4,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Builder(
                                                                builder:
                                                                    (context) {
                                                                  final tabelaNormal =
                                                                      containerFiltroTicketsComStatusRowList
                                                                          .toList();

                                                                  return FlutterFlowDataTable<
                                                                      TicketsComStatusRow>(
                                                                    controller:
                                                                        _model
                                                                            .paginatedDataTableController,
                                                                    data:
                                                                        tabelaNormal,
                                                                    columnsBuilder:
                                                                        (onSortChanged) =>
                                                                            [
                                                                      DataColumn2(
                                                                        label: DefaultTextStyle
                                                                            .merge(
                                                                          softWrap:
                                                                              true,
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              FFButtonWidget(
                                                                                onPressed: () {
                                                                                  print('Button pressed ...');
                                                                                },
                                                                                text: 'ID',
                                                                                options: FFButtonOptions(
                                                                                  height: 40.0,
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                  iconAlignment: IconAlignment.end,
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                        color: Colors.white,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                                      ),
                                                                                  elevation: 0.0,
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      DataColumn2(
                                                                        label: DefaultTextStyle
                                                                            .merge(
                                                                          softWrap:
                                                                              true,
                                                                          child:
                                                                              FFButtonWidget(
                                                                            onPressed:
                                                                                () {
                                                                              print('Button pressed ...');
                                                                            },
                                                                            text:
                                                                                'Máquina',
                                                                            options:
                                                                                FFButtonOptions(
                                                                              height: 40.0,
                                                                              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                    color: Colors.white,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                                  ),
                                                                              elevation: 0.0,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      DataColumn2(
                                                                        label: DefaultTextStyle
                                                                            .merge(
                                                                          softWrap:
                                                                              true,
                                                                          child:
                                                                              FFButtonWidget(
                                                                            onPressed:
                                                                                () {
                                                                              print('Button pressed ...');
                                                                            },
                                                                            text:
                                                                                'Solicitante',
                                                                            options:
                                                                                FFButtonOptions(
                                                                              height: 40.0,
                                                                              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                    color: Colors.white,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                                  ),
                                                                              elevation: 0.0,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      DataColumn2(
                                                                        label: DefaultTextStyle
                                                                            .merge(
                                                                          softWrap:
                                                                              true,
                                                                          child:
                                                                              FFButtonWidget(
                                                                            onPressed:
                                                                                () {
                                                                              print('Button pressed ...');
                                                                            },
                                                                            text:
                                                                                'Data',
                                                                            options:
                                                                                FFButtonOptions(
                                                                              height: 40.0,
                                                                              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                    color: Colors.white,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                                  ),
                                                                              elevation: 0.0,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      DataColumn2(
                                                                        label: DefaultTextStyle
                                                                            .merge(
                                                                          softWrap:
                                                                              true,
                                                                          child:
                                                                              FFButtonWidget(
                                                                            onPressed:
                                                                                () {
                                                                              print('Button pressed ...');
                                                                            },
                                                                            text:
                                                                                'Responsável',
                                                                            options:
                                                                                FFButtonOptions(
                                                                              height: 40.0,
                                                                              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                    color: Colors.white,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                                  ),
                                                                              elevation: 0.0,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      DataColumn2(
                                                                        label: DefaultTextStyle
                                                                            .merge(
                                                                          softWrap:
                                                                              true,
                                                                          child:
                                                                              Text(
                                                                            'Telefone',
                                                                            style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                  color: Colors.white,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      DataColumn2(
                                                                        label: DefaultTextStyle
                                                                            .merge(
                                                                          softWrap:
                                                                              true,
                                                                          child:
                                                                              Text(
                                                                            'Status',
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: Colors.white,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      DataColumn2(
                                                                        label: DefaultTextStyle
                                                                            .merge(
                                                                          softWrap:
                                                                              true,
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Text(
                                                                                'Ações',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      color: Colors.white,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        fixedWidth:
                                                                            150.0,
                                                                      ),
                                                                    ],
                                                                    dataRowBuilder: (tabelaNormalItem,
                                                                            tabelaNormalIndex,
                                                                            selected,
                                                                            onSelectChanged) =>
                                                                        DataRow(
                                                                      color: MaterialStateProperty
                                                                          .all(
                                                                        tabelaNormalIndex % 2 ==
                                                                                0
                                                                            ? FlutterFlowTheme.of(context).secondaryBackground
                                                                            : FlutterFlowTheme.of(context).primaryBackground,
                                                                      ),
                                                                      cells: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                FFAppState().hostnameEdit = tabelaNormalItem.hostname!;
                                                                                FFAppState().nomeColabEdit = tabelaNormalItem.nomeColab!;
                                                                                FFAppState().solicitanteEdit = tabelaNormalItem.requesterNome!;
                                                                                FFAppState().telefoneColabEdit = tabelaNormalItem.requesterTelefone!;
                                                                                FFAppState().descricaoEdit = tabelaNormalItem.descricao!;
                                                                                FFAppState().statusTicket = tabelaNormalItem.statusNome!;
                                                                                FFAppState().ViewComentario = true;
                                                                                safeSetState(() {});
                                                                                await showModalBottomSheet(
                                                                                  isScrollControlled: true,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  enableDrag: false,
                                                                                  context: context,
                                                                                  builder: (context) {
                                                                                    return GestureDetector(
                                                                                      onTap: () {
                                                                                        FocusScope.of(context).unfocus();
                                                                                        FocusManager.instance.primaryFocus?.unfocus();
                                                                                      },
                                                                                      child: Padding(
                                                                                        padding: MediaQuery.viewInsetsOf(context),
                                                                                        child: DetailsTicketWidget(
                                                                                          idTicket: tabelaNormalItem.ticketId!,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ).then((value) => safeSetState(() {}));
                                                                              },
                                                                              child: Text(
                                                                                tabelaNormalItem.ticketId!.toString(),
                                                                                textAlign: TextAlign.center,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children:
                                                                              [
                                                                            if (tabelaNormalItem.deviceType ==
                                                                                'darwin')
                                                                              Icon(
                                                                                Icons.apple,
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                size: 28.0,
                                                                              ),
                                                                            if (tabelaNormalItem.deviceType ==
                                                                                'coletor de dados')
                                                                              Icon(
                                                                                Icons.install_mobile,
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                size: 28.0,
                                                                              ),
                                                                            if (tabelaNormalItem.deviceType ==
                                                                                'Impressora')
                                                                              Icon(
                                                                                Icons.print,
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                size: 28.0,
                                                                              ),
                                                                            if (tabelaNormalItem.deviceType ==
                                                                                'Desktop')
                                                                              FaIcon(
                                                                                FontAwesomeIcons.server,
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                size: 28.0,
                                                                              ),
                                                                            if (tabelaNormalItem.deviceType ==
                                                                                'Servidor')
                                                                              FaIcon(
                                                                                FontAwesomeIcons.database,
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                size: 28.0,
                                                                              ),
                                                                            if (tabelaNormalItem.deviceType ==
                                                                                'Mobile')
                                                                              FaIcon(
                                                                                FontAwesomeIcons.mobileAlt,
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                size: 28.0,
                                                                              ),
                                                                            if (tabelaNormalItem.deviceType ==
                                                                                'Notebook')
                                                                              Icon(
                                                                                Icons.computer,
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                size: 28.0,
                                                                              ),
                                                                            Text(
                                                                              valueOrDefault<String>(
                                                                                tabelaNormalItem.hostname,
                                                                                '[hostname]',
                                                                              ).maybeHandleOverflow(
                                                                                maxChars: 10,
                                                                                replacement: '…',
                                                                              ),
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                  ),
                                                                            ),
                                                                          ].divide(SizedBox(width: 2.0)),
                                                                        ),
                                                                        InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            FFAppState().hostnameEdit =
                                                                                tabelaNormalItem.hostname!;
                                                                            FFAppState().nomeColabEdit =
                                                                                tabelaNormalItem.nomeColab!;
                                                                            FFAppState().solicitanteEdit =
                                                                                tabelaNormalItem.requesterNome!;
                                                                            FFAppState().telefoneColabEdit =
                                                                                tabelaNormalItem.requesterTelefone!;
                                                                            FFAppState().descricaoEdit =
                                                                                tabelaNormalItem.descricao!;
                                                                            FFAppState().statusTicket =
                                                                                tabelaNormalItem.statusNome!;
                                                                            FFAppState().ViewComentario =
                                                                                true;
                                                                            safeSetState(() {});
                                                                            await showModalBottomSheet(
                                                                              isScrollControlled: true,
                                                                              backgroundColor: Colors.transparent,
                                                                              enableDrag: false,
                                                                              context: context,
                                                                              builder: (context) {
                                                                                return GestureDetector(
                                                                                  onTap: () {
                                                                                    FocusScope.of(context).unfocus();
                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                  },
                                                                                  child: Padding(
                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                    child: DetailsTicketWidget(
                                                                                      idTicket: tabelaNormalItem.ticketId!,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ).then((value) =>
                                                                                safeSetState(() {}));
                                                                          },
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              tabelaNormalItem.requesterNome,
                                                                              '[requester_nome]',
                                                                            ),
                                                                            textAlign:
                                                                                TextAlign.justify,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            FFAppState().hostnameEdit =
                                                                                tabelaNormalItem.hostname!;
                                                                            FFAppState().nomeColabEdit =
                                                                                tabelaNormalItem.nomeColab!;
                                                                            FFAppState().solicitanteEdit =
                                                                                tabelaNormalItem.requesterNome!;
                                                                            FFAppState().telefoneColabEdit =
                                                                                tabelaNormalItem.requesterTelefone!;
                                                                            FFAppState().descricaoEdit =
                                                                                tabelaNormalItem.descricao!;
                                                                            FFAppState().statusTicket =
                                                                                tabelaNormalItem.statusNome!;
                                                                            FFAppState().ViewComentario =
                                                                                true;
                                                                            safeSetState(() {});
                                                                            await showModalBottomSheet(
                                                                              isScrollControlled: true,
                                                                              backgroundColor: Colors.transparent,
                                                                              enableDrag: false,
                                                                              context: context,
                                                                              builder: (context) {
                                                                                return GestureDetector(
                                                                                  onTap: () {
                                                                                    FocusScope.of(context).unfocus();
                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                  },
                                                                                  child: Padding(
                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                    child: DetailsTicketWidget(
                                                                                      idTicket: tabelaNormalItem.ticketId!,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ).then((value) =>
                                                                                safeSetState(() {}));
                                                                          },
                                                                          child:
                                                                              Text(
                                                                            dateTimeFormat(
                                                                              "dd/MM/yy -HH:mm",
                                                                              tabelaNormalItem.createdAt!,
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            ),
                                                                            textAlign:
                                                                                TextAlign.justify,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                FFAppState().hostnameEdit = tabelaNormalItem.hostname!;
                                                                                FFAppState().nomeColabEdit = tabelaNormalItem.nomeColab!;
                                                                                FFAppState().solicitanteEdit = tabelaNormalItem.requesterNome!;
                                                                                FFAppState().telefoneColabEdit = tabelaNormalItem.requesterTelefone!;
                                                                                FFAppState().descricaoEdit = tabelaNormalItem.descricao!;
                                                                                FFAppState().statusTicket = tabelaNormalItem.statusNome!;
                                                                                FFAppState().ViewComentario = true;
                                                                                safeSetState(() {});
                                                                                await showModalBottomSheet(
                                                                                  isScrollControlled: true,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  enableDrag: false,
                                                                                  context: context,
                                                                                  builder: (context) {
                                                                                    return GestureDetector(
                                                                                      onTap: () {
                                                                                        FocusScope.of(context).unfocus();
                                                                                        FocusManager.instance.primaryFocus?.unfocus();
                                                                                      },
                                                                                      child: Padding(
                                                                                        padding: MediaQuery.viewInsetsOf(context),
                                                                                        child: DetailsTicketWidget(
                                                                                          idTicket: tabelaNormalItem.ticketId!,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ).then((value) => safeSetState(() {}));
                                                                              },
                                                                              child: Text(
                                                                                valueOrDefault<String>(
                                                                                  tabelaNormalItem.nomeColab,
                                                                                  '[nome]',
                                                                                ),
                                                                                textAlign: TextAlign.justify,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            FFAppState().hostnameEdit =
                                                                                tabelaNormalItem.hostname!;
                                                                            FFAppState().nomeColabEdit =
                                                                                tabelaNormalItem.nomeColab!;
                                                                            FFAppState().solicitanteEdit =
                                                                                tabelaNormalItem.requesterNome!;
                                                                            FFAppState().telefoneColabEdit =
                                                                                tabelaNormalItem.requesterTelefone!;
                                                                            FFAppState().descricaoEdit =
                                                                                tabelaNormalItem.descricao!;
                                                                            FFAppState().statusTicket =
                                                                                tabelaNormalItem.statusNome!;
                                                                            FFAppState().ViewComentario =
                                                                                true;
                                                                            safeSetState(() {});
                                                                            await showModalBottomSheet(
                                                                              isScrollControlled: true,
                                                                              backgroundColor: Colors.transparent,
                                                                              enableDrag: false,
                                                                              context: context,
                                                                              builder: (context) {
                                                                                return GestureDetector(
                                                                                  onTap: () {
                                                                                    FocusScope.of(context).unfocus();
                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                  },
                                                                                  child: Padding(
                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                    child: DetailsTicketWidget(
                                                                                      idTicket: tabelaNormalItem.ticketId!,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ).then((value) =>
                                                                                safeSetState(() {}));
                                                                          },
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              tabelaNormalItem.requesterTelefone,
                                                                              '[telefone]',
                                                                            ),
                                                                            textAlign:
                                                                                TextAlign.justify,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            FFAppState().hostnameEdit =
                                                                                tabelaNormalItem.hostname!;
                                                                            FFAppState().nomeColabEdit =
                                                                                tabelaNormalItem.nomeColab!;
                                                                            FFAppState().solicitanteEdit =
                                                                                tabelaNormalItem.requesterNome!;
                                                                            FFAppState().telefoneColabEdit =
                                                                                tabelaNormalItem.requesterTelefone!;
                                                                            FFAppState().descricaoEdit =
                                                                                tabelaNormalItem.descricao!;
                                                                            FFAppState().statusTicket =
                                                                                tabelaNormalItem.statusNome!;
                                                                            FFAppState().ViewComentario =
                                                                                true;
                                                                            safeSetState(() {});
                                                                            await showModalBottomSheet(
                                                                              isScrollControlled: true,
                                                                              backgroundColor: Colors.transparent,
                                                                              enableDrag: false,
                                                                              context: context,
                                                                              builder: (context) {
                                                                                return GestureDetector(
                                                                                  onTap: () {
                                                                                    FocusScope.of(context).unfocus();
                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                  },
                                                                                  child: Padding(
                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                    child: DetailsTicketWidget(
                                                                                      idTicket: tabelaNormalItem.ticketId!,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ).then((value) =>
                                                                                safeSetState(() {}));
                                                                          },
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              tabelaNormalItem.statusNome,
                                                                              '[status]',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Align(
                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                              child: FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  FFAppState().hostnameEdit = tabelaNormalItem.hostname!;
                                                                                  FFAppState().nomeColabEdit = tabelaNormalItem.nomeColab!;
                                                                                  FFAppState().solicitanteEdit = tabelaNormalItem.requesterNome!;
                                                                                  FFAppState().telefoneColabEdit = tabelaNormalItem.requesterTelefone!;
                                                                                  FFAppState().descricaoEdit = tabelaNormalItem.descricao!;
                                                                                  safeSetState(() {});
                                                                                  await showModalBottomSheet(
                                                                                    isScrollControlled: true,
                                                                                    backgroundColor: Colors.transparent,
                                                                                    enableDrag: false,
                                                                                    context: context,
                                                                                    builder: (context) {
                                                                                      return GestureDetector(
                                                                                        onTap: () {
                                                                                          FocusScope.of(context).unfocus();
                                                                                          FocusManager.instance.primaryFocus?.unfocus();
                                                                                        },
                                                                                        child: Padding(
                                                                                          padding: MediaQuery.viewInsetsOf(context),
                                                                                          child: EditTicketWidget(
                                                                                            idTicket: tabelaNormalItem.ticketId,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ).then((value) => safeSetState(() {}));

                                                                                  safeSetState(() => _model.requestCompleter6 = null);
                                                                                  await _model.waitForRequestCompleted6();
                                                                                },
                                                                                text: '',
                                                                                icon: FaIcon(
                                                                                  FontAwesomeIcons.pen,
                                                                                  size: 20.0,
                                                                                ),
                                                                                options: FFButtonOptions(
                                                                                  width: 50.0,
                                                                                  height: 35.0,
                                                                                  padding: EdgeInsets.all(0.0),
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                  iconColor: FlutterFlowTheme.of(context).primaryText,
                                                                                  color: Color(0x00D74F30),
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                        color: Colors.white,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                                      ),
                                                                                  elevation: 0.0,
                                                                                  borderRadius: BorderRadius.circular(64.0),
                                                                                  hoverTextColor: FlutterFlowTheme.of(context).alternate,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            FFButtonWidget(
                                                                              onPressed: (tabelaNormalItem.statusNome == 'Cancelado')
                                                                                  ? null
                                                                                  : () async {
                                                                                      await showModalBottomSheet(
                                                                                        isScrollControlled: true,
                                                                                        backgroundColor: Colors.transparent,
                                                                                        enableDrag: false,
                                                                                        context: context,
                                                                                        builder: (context) {
                                                                                          return GestureDetector(
                                                                                            onTap: () {
                                                                                              FocusScope.of(context).unfocus();
                                                                                              FocusManager.instance.primaryFocus?.unfocus();
                                                                                            },
                                                                                            child: Padding(
                                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                                              child: DialogDeleteWidget(
                                                                                                idTicket: tabelaNormalItem.ticketId!,
                                                                                                statusAtual: tabelaNormalItem.statusNome!,
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                      ).then((value) => safeSetState(() {}));

                                                                                      safeSetState(() => _model.requestCompleter6 = null);
                                                                                      await _model.waitForRequestCompleted6();
                                                                                    },
                                                                              text: '',
                                                                              icon: FaIcon(
                                                                                FontAwesomeIcons.trash,
                                                                                size: 20.0,
                                                                              ),
                                                                              options: FFButtonOptions(
                                                                                width: 50.0,
                                                                                height: 45.0,
                                                                                padding: EdgeInsets.all(0.0),
                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                iconColor: FlutterFlowTheme.of(context).primaryText,
                                                                                color: Color(0x00D74F30),
                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                      color: Colors.white,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                                    ),
                                                                                elevation: 0.0,
                                                                                borderRadius: BorderRadius.circular(60.0),
                                                                                disabledTextColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                hoverTextColor: FlutterFlowTheme.of(context).error,
                                                                              ),
                                                                            ),
                                                                            FFButtonWidget(
                                                                              onPressed: () async {
                                                                                FFAppState().hostnameEdit = tabelaNormalItem.hostname!;
                                                                                FFAppState().nomeColabEdit = tabelaNormalItem.nomeColab!;
                                                                                FFAppState().solicitanteEdit = tabelaNormalItem.requesterNome!;
                                                                                FFAppState().telefoneColabEdit = tabelaNormalItem.requesterTelefone!;
                                                                                FFAppState().descricaoEdit = tabelaNormalItem.descricao!;
                                                                                FFAppState().statusTicket = tabelaNormalItem.statusNome!;
                                                                                FFAppState().ViewComentario = true;
                                                                                safeSetState(() {});
                                                                                await showModalBottomSheet(
                                                                                  isScrollControlled: true,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  enableDrag: false,
                                                                                  context: context,
                                                                                  builder: (context) {
                                                                                    return GestureDetector(
                                                                                      onTap: () {
                                                                                        FocusScope.of(context).unfocus();
                                                                                        FocusManager.instance.primaryFocus?.unfocus();
                                                                                      },
                                                                                      child: Padding(
                                                                                        padding: MediaQuery.viewInsetsOf(context),
                                                                                        child: DetailsTicketWidget(
                                                                                          idTicket: tabelaNormalItem.ticketId!,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ).then((value) => safeSetState(() {}));
                                                                              },
                                                                              text: '',
                                                                              icon: Icon(
                                                                                Icons.arrow_forward_ios,
                                                                                size: 25.0,
                                                                              ),
                                                                              options: FFButtonOptions(
                                                                                width: 55.0,
                                                                                height: 30.0,
                                                                                padding: EdgeInsets.all(0.0),
                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                iconColor: FlutterFlowTheme.of(context).primaryText,
                                                                                color: Color(0x00D74F30),
                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                      color: Colors.white,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                                    ),
                                                                                elevation: 0.0,
                                                                                borderRadius: BorderRadius.circular(60.0),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ]
                                                                          .map((c) =>
                                                                              DataCell(c))
                                                                          .toList(),
                                                                    ),
                                                                    paginated:
                                                                        true,
                                                                    selectable:
                                                                        false,
                                                                    hidePaginator:
                                                                        false,
                                                                    showFirstLastButtons:
                                                                        true,
                                                                    height:
                                                                        100.0,
                                                                    minWidth:
                                                                        () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return 500.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return 1080.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 1080.0;
                                                                      } else {
                                                                        return 1080.0;
                                                                      }
                                                                    }(),
                                                                    columnSpacing:
                                                                        0.0,
                                                                    headingRowColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    addHorizontalDivider:
                                                                        true,
                                                                    addTopAndBottomDivider:
                                                                        false,
                                                                    hideDefaultHorizontalDivider:
                                                                        true,
                                                                    horizontalDividerColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .lineColor,
                                                                    addVerticalDivider:
                                                                        false,
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              if (((_model.dropDownStatusMobile3Value !=
                                                          'Abertos') &&
                                                      (_model.dropDownStatusMobile3Value !=
                                                          'Todos os Status')) &&
                                                  responsiveVisibility(
                                                    context: context,
                                                    tabletLandscape: false,
                                                    desktop: false,
                                                  ))
                                                Expanded(
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: FutureBuilder<
                                                        List<
                                                            TicketsComStatusRow>>(
                                                      future: (_model
                                                                  .requestCompleter2 ??=
                                                              Completer<
                                                                  List<
                                                                      TicketsComStatusRow>>()
                                                                ..complete(
                                                                    TicketsComStatusTable()
                                                                        .queryRows(
                                                                  queryFn: (q) =>
                                                                      q.or(
                                                                          "status_nome.eq.${_model.dropDownStatusMobile3Value}, hostname.ilike.${'%${_model.inputHostnameTextController.text}%'}, requester_nome.ilike.${'%${_model.inputHostnameTextController.text}%'}"),
                                                                )))
                                                          .future,
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  SpinKitFoldingCube(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 50.0,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<TicketsComStatusRow>
                                                            containerFiltroMobileTicketsComStatusRowList =
                                                            snapshot.data!;

                                                        return Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Builder(
                                                            builder: (context) {
                                                              final ticketDataTable =
                                                                  containerFiltroMobileTicketsComStatusRowList
                                                                      .toList();

                                                              return FlutterFlowDataTable<
                                                                  TicketsComStatusRow>(
                                                                controller: _model
                                                                    .dataTableMobileController,
                                                                data:
                                                                    ticketDataTable,
                                                                columnsBuilder:
                                                                    (onSortChanged) =>
                                                                        [
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          FFButtonWidget(
                                                                            onPressed:
                                                                                () {
                                                                              print('Button pressed ...');
                                                                            },
                                                                            text:
                                                                                'Máquina',
                                                                            options:
                                                                                FFButtonOptions(
                                                                              height: 40.0,
                                                                              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                    color: Colors.white,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                                  ),
                                                                              elevation: 0.0,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            'Ações',
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: Colors.white,
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                                dataRowBuilder: (ticketDataTableItem,
                                                                        ticketDataTableIndex,
                                                                        selected,
                                                                        onSelectChanged) =>
                                                                    DataRow(
                                                                  color:
                                                                      MaterialStateProperty
                                                                          .all(
                                                                    ticketDataTableIndex %
                                                                                2 ==
                                                                            0
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .secondaryBackground
                                                                        : FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                  ),
                                                                  cells: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        AutoSizeText(
                                                                          ticketDataTableItem
                                                                              .hostname!
                                                                              .maybeHandleOverflow(
                                                                            maxChars:
                                                                                10,
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.justify,
                                                                          minFontSize:
                                                                              12.0,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              5.0),
                                                                      child:
                                                                          DropDownMobileWidget(
                                                                        key: Key(
                                                                            'Keyo6n_${ticketDataTableIndex}_of_${ticketDataTable.length}'),
                                                                        parameter2:
                                                                            ticketDataTableItem.ticketId,
                                                                      ),
                                                                    ),
                                                                  ]
                                                                      .map((c) =>
                                                                          DataCell(
                                                                              c))
                                                                      .toList(),
                                                                ),
                                                                paginated: true,
                                                                selectable:
                                                                    false,
                                                                hidePaginator:
                                                                    false,
                                                                showFirstLastButtons:
                                                                    true,
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    1.0,
                                                                height: MediaQuery.sizeOf(
                                                                            context)
                                                                        .height *
                                                                    1.0,
                                                                minWidth: () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall) {
                                                                    return 500.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointMedium) {
                                                                    return 1080.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointLarge) {
                                                                    return 1080.0;
                                                                  } else {
                                                                    return 1080.0;
                                                                  }
                                                                }(),
                                                                headingRowColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                addHorizontalDivider:
                                                                    true,
                                                                addTopAndBottomDivider:
                                                                    false,
                                                                hideDefaultHorizontalDivider:
                                                                    true,
                                                                horizontalDividerColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                addVerticalDivider:
                                                                    false,
                                                              );
                                                            },
                                                          ),
                                                        );
                                                      },
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
                            ].divide(SizedBox(height: 10.0)),
                          ),
                        ),
                      ),
                    ]
                        .divide(SizedBox(height: 10.0))
                        .around(SizedBox(height: 10.0)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
