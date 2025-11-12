import '/backend/supabase/supabase.dart';
import '/components/maintenance_page/details_ticket_mobile/details_ticket_mobile_widget.dart';
import '/components/maintenance_page/dialog_delete/dialog_delete_widget.dart';
import '/components/maintenance_page/edit_ticket_mobile/edit_ticket_mobile_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'drop_down_mobile_model.dart';
export 'drop_down_mobile_model.dart';

class DropDownMobileWidget extends StatefulWidget {
  const DropDownMobileWidget({
    super.key,
    this.parameter2,
    this.parameter1,
  });

  final int? parameter2;
  final String? parameter1;

  @override
  State<DropDownMobileWidget> createState() => _DropDownMobileWidgetState();
}

class _DropDownMobileWidgetState extends State<DropDownMobileWidget> {
  late DropDownMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DropDownMobileModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => FutureBuilder<List<TicketsComStatusRow>>(
        future:
            (_model.requestCompleter ??= Completer<List<TicketsComStatusRow>>()
                  ..complete(TicketsComStatusTable().queryRows(
                    queryFn: (q) => q,
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
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            );
          }
          List<TicketsComStatusRow> dropDownTicketsComStatusRowList =
              snapshot.data!;

          return FlutterFlowDropDown<String>(
            controller: _model.dropDownValueController ??=
                FormFieldController<String>(null),
            options: ['Editar', 'Cancelar', 'Detalhes'],
            onChanged: (val) async {
              safeSetState(() => _model.dropDownValue = val);
              if (_model.dropDownValue == 'Editar') {
                await showDialog(
                  context: context,
                  builder: (dialogContext) {
                    return Dialog(
                      elevation: 0,
                      insetPadding: EdgeInsets.zero,
                      backgroundColor: Colors.transparent,
                      alignment: AlignmentDirectional(0.0, 0.0)
                          .resolve(Directionality.of(context)),
                      child: EditTicketMobileWidget(
                        idTicket: widget!.parameter2,
                      ),
                    );
                  },
                );
              }
              if (_model.dropDownValue == 'Cancelar') {
                await showDialog(
                  context: context,
                  builder: (dialogContext) {
                    return Dialog(
                      elevation: 0,
                      insetPadding: EdgeInsets.zero,
                      backgroundColor: Colors.transparent,
                      alignment: AlignmentDirectional(0.0, 0.0)
                          .resolve(Directionality.of(context)),
                      child: DialogDeleteWidget(
                        idTicket: widget!.parameter2!,
                        statusAtual: dropDownTicketsComStatusRowList
                            .firstOrNull!.statusNome!,
                      ),
                    );
                  },
                );
              }
              if (_model.dropDownValue == 'Detalhes') {
                await showDialog(
                  context: context,
                  builder: (dialogContext) {
                    return Dialog(
                      elevation: 0,
                      insetPadding: EdgeInsets.zero,
                      backgroundColor: Colors.transparent,
                      alignment: AlignmentDirectional(0.0, 0.0)
                          .resolve(Directionality.of(context)),
                      child: DetailsTicketMobileWidget(
                        idTicket: widget!.parameter2!,
                      ),
                    );
                  },
                );
              }
              safeSetState(() => _model.requestCompleter = null);
              await _model.waitForRequestCompleted(
                  minWait: 1000, maxWait: 3000);
            },
            width: 100.0,
            height: 30.0,
            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                  fontSize: 9.0,
                  letterSpacing: 0.0,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                ),
            hintText: 'ação',
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
            elevation: 2.0,
            borderColor: FlutterFlowTheme.of(context).primary,
            borderWidth: 0.0,
            borderRadius: 8.0,
            margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
            hidesUnderline: true,
            isOverButton: false,
            isSearchable: false,
            isMultiSelect: false,
          );
        },
      ),
    );
  }
}
