import '/backend/supabase/supabase.dart';
import '/components/maintenance_page/edit_ticket/edit_ticket_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'details_ticket_model.dart';
export 'details_ticket_model.dart';

class DetailsTicketWidget extends StatefulWidget {
  const DetailsTicketWidget({
    super.key,
    required this.idTicket,
  });

  final int? idTicket;

  @override
  State<DetailsTicketWidget> createState() => _DetailsTicketWidgetState();
}

class _DetailsTicketWidgetState extends State<DetailsTicketWidget>
    with TickerProviderStateMixin {
  late DetailsTicketModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetailsTicketModel());

    _model.inputComentarioTextController ??= TextEditingController();
    _model.inputComentarioFocusNode ??= FocusNode();

    animationsMap.addAll({
      'listViewOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: FutureBuilder<List<TicketsComStatusRow>>(
                    future: TicketsComStatusTable().queryRows(
                      queryFn: (q) => q.eqOrNull(
                        'ticket_id',
                        widget!.idTicket,
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
                              color: FlutterFlowTheme.of(context).primary,
                              size: 50.0,
                            ),
                          ),
                        );
                      }
                      List<TicketsComStatusRow>
                          containerTicketsComStatusRowList = snapshot.data!;

                      return Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 0.574,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width: 662.55,
                                  height: 100.0,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: '#Ticket: ',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .displayLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displayLargeFamily,
                                                            fontSize: 40.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .displayLargeIsCustom,
                                                          ),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    widget!.idTicket
                                                        ?.toString(),
                                                    'id',
                                                  ),
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .displayLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displayLargeFamily,
                                                            fontSize: 40.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .displayLargeIsCustom,
                                                          ),
                                                )
                                              ],
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .displayLarge
                                                  .override(
                                                    font: GoogleFonts.openSans(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .displayLarge
                                                              .fontStyle,
                                                    ),
                                                    fontSize: 25.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .displayLarge
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.105,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.05,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(64.0),
                                          ),
                                          child: FFButtonWidget(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            text: FFAppState().statusTicket,
                                            options: FFButtonOptions(
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.1,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .displayMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .displayMediumFamily,
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .displayMediumIsCustom,
                                                      ),
                                              elevation: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 15.0)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      Navigator.pop(context);
                                    },
                                    text: '',
                                    icon: Icon(
                                      Icons.close,
                                      size: 40.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 52.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0x00D74F30),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .titleSmallIsCustom,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Wrap(
                                spacing: 30.0,
                                runSpacing: 0.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.3,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.15,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: Color(0xFF313030),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.computer_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            size: 40.0,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(20.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Hostname Máquina',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .openSans(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                                Text(
                                                  FFAppState().hostnameEdit,
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                ),
                                              ].divide(SizedBox(height: 5.0)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.3,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.15,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: Color(0xFF313030),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.person,
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            size: 40.0,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(20.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Funcionário',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .openSans(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                                Text(
                                                  FFAppState().nomeColabEdit,
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                ),
                                              ].divide(SizedBox(height: 5.0)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.3,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.15,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: Color(0xFF313030),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.call,
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            size: 40.0,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(20.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Telefone do Colaborador',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .openSans(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                                Text(
                                                  FFAppState()
                                                      .telefoneColabEdit,
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                ),
                                              ].divide(SizedBox(height: 5.0)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Wrap(
                                      spacing: 30.0,
                                      runSpacing: 0.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.3,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.15,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            border: Border.all(
                                              color: Color(0xFF313030),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.engineering,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  size: 40.0,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(20.0),
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
                                                        'Técnico Responsável',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .openSans(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                      FutureBuilder<
                                                          List<
                                                              TicketsTecnicosRow>>(
                                                        future: (_model
                                                                    .requestCompleter2 ??=
                                                                Completer<
                                                                    List<
                                                                        TicketsTecnicosRow>>()
                                                                  ..complete(
                                                                      TicketsTecnicosTable()
                                                                          .queryRows(
                                                                    queryFn: (q) =>
                                                                        q.eqOrNull(
                                                                      'ticket_id',
                                                                      widget!
                                                                          .idTicket,
                                                                    ),
                                                                  )))
                                                            .future,
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
                                                          List<TicketsTecnicosRow>
                                                              textTicketsTecnicosRowList =
                                                              snapshot.data!;

                                                          return Text(
                                                            valueOrDefault<
                                                                String>(
                                                              textTicketsTecnicosRowList
                                                                  .firstOrNull
                                                                  ?.tecnicoNome,
                                                              '[nome]',
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
                                                          );
                                                        },
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 5.0)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.3,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.15,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            border: Border.all(
                                              color: Color(0xFF313030),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                FaIcon(
                                                  FontAwesomeIcons.clock,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  size: 40.0,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(20.0),
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
                                                        'Data de Abertura',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .openSans(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                      Text(
                                                        dateTimeFormat(
                                                          "dd/MM/yyyy - HH:mm:ss",
                                                          containerTicketsComStatusRowList
                                                              .firstOrNull!
                                                              .createdAt!,
                                                          locale:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .languageCode,
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
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 5.0)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.3,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.15,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            border: Border.all(
                                              color: Color(0xFF313030),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.person_4_sharp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  size: 40.0,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(20.0),
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
                                                        'Solicitante',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .openSans(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                      Text(
                                                        FFAppState()
                                                            .solicitanteEdit,
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
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 5.0)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.15,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.05,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Builder(
                                      builder: (context) => FFButtonWidget(
                                        onPressed: () async {
                                          await showDialog(
                                            context: context,
                                            builder: (dialogContext) {
                                              return Dialog(
                                                elevation: 0,
                                                insetPadding: EdgeInsets.zero,
                                                backgroundColor:
                                                    Colors.transparent,
                                                alignment: AlignmentDirectional(
                                                        0.0, 0.0)
                                                    .resolve(Directionality.of(
                                                        context)),
                                                child: EditTicketWidget(
                                                  idTicket: widget!.idTicket,
                                                ),
                                              );
                                            },
                                          );

                                          safeSetState(() =>
                                              _model.requestCompleter2 = null);
                                          await _model.waitForRequestCompleted2(
                                              minWait: 1000, maxWait: 3000);
                                        },
                                        text: 'Editar Ticket',
                                        icon: FaIcon(
                                          FontAwesomeIcons.pen,
                                          size: 15.0,
                                        ),
                                        options: FFButtonOptions(
                                          height: 50.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                color: Colors.white,
                                                fontSize: 15.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmallIsCustom,
                                              ),
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ].divide(SizedBox(height: 20.0)),
                        ),
                      );
                    },
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 20.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: FutureBuilder<List<TicketsRow>>(
                                    future: TicketsTable().queryRows(
                                      queryFn: (q) => q.eqOrNull(
                                        'ticket_id',
                                        widget!.idTicket,
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 50.0,
                                            ),
                                          ),
                                        );
                                      }
                                      List<TicketsRow> containerTicketsRowList =
                                          snapshot.data!;

                                      return Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.662,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.121,
                                        constraints: BoxConstraints(
                                          minWidth: 390.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(15.0),
                                              child: Container(
                                                width: 379.1,
                                                height: 38.7,
                                                decoration: BoxDecoration(),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Icon(
                                                      Icons.warning_amber,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      size: 30.0,
                                                    ),
                                                    Text(
                                                      'Descrição do Problema',
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
                                                  ].divide(
                                                      SizedBox(width: 10.0)),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      30.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                FFAppState().descricaoEdit,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: FutureBuilder<List<ComentsTicketRow>>(
                            future: (_model.requestCompleter1 ??=
                                    Completer<List<ComentsTicketRow>>()
                                      ..complete(ComentsTicketTable().queryRows(
                                        queryFn: (q) => q
                                            .eqOrNull(
                                              'ticket_id',
                                              widget!.idTicket,
                                            )
                                            .order('created_at'),
                                      )))
                                .future,
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: SpinKitFoldingCube(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 50.0,
                                    ),
                                  ),
                                );
                              }
                              List<ComentsTicketRow>
                                  containerComentComentsTicketRowList =
                                  snapshot.data!;

                              return Container(
                                width: MediaQuery.sizeOf(context).width * 0.307,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.402,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 75.3,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                0.0, 0.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        FFAppState()
                                                                .ViewHistorico =
                                                            false;
                                                        FFAppState()
                                                                .ViewComentario =
                                                            true;
                                                        safeSetState(() {});
                                                      },
                                                      text: 'Comentários',
                                                      icon: Icon(
                                                        Icons.wechat_sharp,
                                                        size: 30.0,
                                                      ),
                                                      options: FFButtonOptions(
                                                        height: 51.0,
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
                                                        color: FFAppState()
                                                                .ViewHistorico
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground
                                                            : Color(0xFFFF2D00),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
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
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                20.0, 0.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        FFAppState()
                                                                .ViewComentario =
                                                            false;
                                                        FFAppState()
                                                                .ViewHistorico =
                                                            true;
                                                        safeSetState(() {});
                                                      },
                                                      text: 'Histórico',
                                                      icon: Icon(
                                                        Icons.av_timer,
                                                        size: 30.0,
                                                      ),
                                                      options: FFButtonOptions(
                                                        height: 52.0,
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
                                                        color: FFAppState()
                                                                .ViewComentario
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .tertiary,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
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
                                                ),
                                              ].divide(SizedBox(width: 10.0)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.vertical,
                                        child: Flex(
                                          direction: Axis.vertical,
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsets.all(10.0),
                                                child: FutureBuilder<
                                                    List<TicketHistoryRow>>(
                                                  future: TicketHistoryTable()
                                                      .queryRows(
                                                    queryFn: (q) => q
                                                        .eqOrNull(
                                                          'ticket_id',
                                                          widget!.idTicket,
                                                        )
                                                        .order('changed_at',
                                                            ascending: true),
                                                  ),
                                                  builder: (context, snapshot) {
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
                                                    List<TicketHistoryRow>
                                                        containerTicketHistoryRowList =
                                                        snapshot.data!;

                                                    return Container(
                                                      height: 210.39,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      child:
                                                          SingleChildScrollView(
                                                        primary: false,
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            if (valueOrDefault<
                                                                bool>(
                                                              FFAppState()
                                                                  .ViewComentario,
                                                              true,
                                                            ))
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            20.0),
                                                                child: Builder(
                                                                  builder:
                                                                      (context) {
                                                                    final comentarioResult =
                                                                        containerComentComentsTicketRowList
                                                                            .toList();

                                                                    return ListView
                                                                        .separated(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      shrinkWrap:
                                                                          true,
                                                                      scrollDirection:
                                                                          Axis.vertical,
                                                                      itemCount:
                                                                          comentarioResult
                                                                              .length,
                                                                      separatorBuilder: (_,
                                                                              __) =>
                                                                          SizedBox(
                                                                              height: 10.0),
                                                                      itemBuilder:
                                                                          (context,
                                                                              comentarioResultIndex) {
                                                                        final comentarioResultItem =
                                                                            comentarioResult[comentarioResultIndex];
                                                                        return Container(
                                                                          constraints:
                                                                              BoxConstraints(
                                                                            minHeight:
                                                                                100.0,
                                                                          ),
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Color(0xE60D121D),
                                                                            borderRadius:
                                                                                BorderRadius.circular(20.0),
                                                                          ),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      valueOrDefault<String>(
                                                                                        comentarioResultItem.autor,
                                                                                        'autor',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            fontSize: 18.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.bold,
                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsets.all(10.0),
                                                                                    child: Text(
                                                                                      valueOrDefault<String>(
                                                                                        dateTimeFormat(
                                                                                          "dd/MM - HH:mm",
                                                                                          comentarioResultItem.createdAt,
                                                                                          locale: FFLocalizations.of(context).languageCode,
                                                                                        ),
                                                                                        'data',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  valueOrDefault<String>(
                                                                                    comentarioResultItem.comentario,
                                                                                    'comentário',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).animateOnActionTrigger(
                                                                      animationsMap[
                                                                          'listViewOnActionTriggerAnimation']!,
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            if (FFAppState()
                                                                .ViewHistorico)
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                                child: Builder(
                                                                  builder:
                                                                      (context) {
                                                                    final resultHistory =
                                                                        containerTicketHistoryRowList
                                                                            .toList();

                                                                    return ListView
                                                                        .separated(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      shrinkWrap:
                                                                          true,
                                                                      scrollDirection:
                                                                          Axis.vertical,
                                                                      itemCount:
                                                                          resultHistory
                                                                              .length,
                                                                      separatorBuilder: (_,
                                                                              __) =>
                                                                          SizedBox(
                                                                              height: 20.0),
                                                                      itemBuilder:
                                                                          (context,
                                                                              resultHistoryIndex) {
                                                                        final resultHistoryItem =
                                                                            resultHistory[resultHistoryIndex];
                                                                        return FutureBuilder<
                                                                            List<UserProfilesRow>>(
                                                                          future:
                                                                              UserProfilesTable().queryRows(
                                                                            queryFn: (q) =>
                                                                                q,
                                                                            limit:
                                                                                1,
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                            List<UserProfilesRow>
                                                                                richTextUserProfilesRowList =
                                                                                snapshot.data!;

                                                                            return RichText(
                                                                              textScaler: MediaQuery.of(context).textScaler,
                                                                              text: TextSpan(
                                                                                children: [
                                                                                  TextSpan(
                                                                                    text: dateTimeFormat(
                                                                                      "dd/MM/yyyy - HH:mm",
                                                                                      resultHistoryItem.changedAt,
                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                    ),
                                                                                    style: TextStyle(),
                                                                                  ),
                                                                                  TextSpan(
                                                                                    text: ' | ',
                                                                                    style: TextStyle(),
                                                                                  ),
                                                                                  TextSpan(
                                                                                    text: valueOrDefault<String>(
                                                                                      richTextUserProfilesRowList.firstOrNull?.fullName,
                                                                                      'vázio',
                                                                                    ),
                                                                                    style: TextStyle(),
                                                                                  ),
                                                                                  TextSpan(
                                                                                    text: ' alterou o campo: ',
                                                                                    style: TextStyle(),
                                                                                  ),
                                                                                  TextSpan(
                                                                                    text: resultHistoryItem.fieldName,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w600,
                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                        ),
                                                                                  ),
                                                                                  TextSpan(
                                                                                    text: ' de  ',
                                                                                    style: TextStyle(),
                                                                                  ),
                                                                                  TextSpan(
                                                                                    text: valueOrDefault<String>(
                                                                                      resultHistoryItem.oldValue,
                                                                                      '[vázio]',
                                                                                    ),
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).secondary,
                                                                                      fontSize: 16.0,
                                                                                    ),
                                                                                  ),
                                                                                  TextSpan(
                                                                                    text: '  para  -> ',
                                                                                    style: TextStyle(),
                                                                                  ),
                                                                                  TextSpan(
                                                                                    text: valueOrDefault<String>(
                                                                                      resultHistoryItem.newValue,
                                                                                      '[vázio]',
                                                                                    ),
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      fontWeight: FontWeight.w600,
                                                                                      fontSize: 16.0,
                                                                                    ),
                                                                                  )
                                                                                ],
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                    ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        );
                                                                      },
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                          ].divide(SizedBox(
                                                              height: 10.0)),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ].divide(false
                                              ? SizedBox(width: 10.0)
                                              : SizedBox(height: 10.0)),
                                        ),
                                      ),
                                    ),
                                    if (valueOrDefault<bool>(
                                      FFAppState().ViewComentario,
                                      true,
                                    ))
                                      FutureBuilder<List<UserProfilesRow>>(
                                        future: UserProfilesTable().queryRows(
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 50.0,
                                                ),
                                              ),
                                            );
                                          }
                                          List<UserProfilesRow>
                                              containerUserProfilesRowList =
                                              snapshot.data!;

                                          return Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.465,
                                            height: 59.3,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(0.0),
                                                topLeft: Radius.circular(8.0),
                                                topRight: Radius.circular(8.0),
                                              ),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .thirdBackground,
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 322.0,
                                                  child: Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.2,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .inputComentarioTextController,
                                                      focusNode: _model
                                                          .inputComentarioFocusNode,
                                                      onFieldSubmitted:
                                                          (_) async {
                                                        _model.insertComentarioCopy =
                                                            await ComentsTicketTable()
                                                                .insert({
                                                          'comentario': _model
                                                              .inputComentarioTextController
                                                              .text,
                                                          'autor':
                                                              containerUserProfilesRowList
                                                                  .firstOrNull
                                                                  ?.fullName,
                                                          'ticket_id':
                                                              widget!.idTicket,
                                                        });
                                                        safeSetState(() => _model
                                                                .requestCompleter1 =
                                                            null);
                                                        await _model
                                                            .waitForRequestCompleted1(
                                                                minWait: 1000,
                                                                maxWait: 3000);
                                                        safeSetState(() {
                                                          _model
                                                              .inputComentarioTextController
                                                              ?.clear();
                                                        });

                                                        safeSetState(() {});
                                                      },
                                                      autofocus: false,
                                                      textInputAction:
                                                          TextInputAction.send,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        isDense: true,
                                                        labelText: 'comentário',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                        alignLabelWithHint:
                                                            false,
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMediumIsCustom,
                                                                ),
                                                        enabledBorder:
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
                                                            color: FlutterFlowTheme
                                                                    .of(context)
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
                                                            color: FlutterFlowTheme
                                                                    .of(context)
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
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
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
                                                          .inputComentarioTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 70.04,
                                                  height: 61.7,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      _model.insertComentario =
                                                          await ComentsTicketTable()
                                                              .insert({
                                                        'comentario': _model
                                                            .inputComentarioTextController
                                                            .text,
                                                        'autor':
                                                            containerUserProfilesRowList
                                                                .firstOrNull
                                                                ?.fullName,
                                                        'ticket_id':
                                                            widget!.idTicket,
                                                      });
                                                      safeSetState(() => _model
                                                              .requestCompleter1 =
                                                          null);
                                                      await _model
                                                          .waitForRequestCompleted1(
                                                              minWait: 1000,
                                                              maxWait: 3000);

                                                      safeSetState(() {});
                                                    },
                                                    text: '',
                                                    icon: Icon(
                                                      Icons.send_sharp,
                                                      size: 25.0,
                                                    ),
                                                    options: FFButtonOptions(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          1.0,
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
                                                                  7.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      iconColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      color: Color(0x00D74F30),
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
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmallIsCustom,
                                                              ),
                                                      elevation: 0.0,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24.0),
                                                      hoverColor:
                                                          Color(0xFFFB2E00),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
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
