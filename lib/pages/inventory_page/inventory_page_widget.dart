import '/components/inventario/inventory_details_device/inventory_details_device_widget.dart';
import '/components/inventario/inventory_list/inventory_list_widget.dart';
import '/components/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'inventory_page_model.dart';
export 'inventory_page_model.dart';

class InventoryPageWidget extends StatefulWidget {
  const InventoryPageWidget({
    super.key,
    this.filterUser,
    this.idDevice,
    bool? viewList,
    this.viewDevice,
  }) : this.viewList = viewList ?? true;

  final int? filterUser;
  final int? idDevice;
  final bool viewList;
  final bool? viewDevice;

  static String routeName = 'inventoryPage';
  static String routePath = 'inventory';

  @override
  State<InventoryPageWidget> createState() => _InventoryPageWidgetState();
}

class _InventoryPageWidgetState extends State<InventoryPageWidget> {
  late InventoryPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InventoryPageModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            Stack(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          oneIcon: Icon(
                            Icons.bar_chart_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                          twoBG: FlutterFlowTheme.of(context).primaryBackground,
                          twoIcon: Icon(
                            Icons.devices_other,
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                          threeColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          threeIcon: Icon(
                            Icons.account_circle_outlined,
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                          userIcon: FaIcon(
                            FontAwesomeIcons.users,
                          ),
                          userBG:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          fixIcon: Icon(
                            Icons.build_outlined,
                          ),
                        ),
                      ),
                    if (FFAppState().viewListaInvetario == true)
                      Expanded(
                        child: wrapWithModel(
                          model: _model.inventoryListModel,
                          updateCallback: () => safeSetState(() {}),
                          child: InventoryListWidget(
                            parameter1: widget!.filterUser,
                          ),
                        ),
                      ),
                    if (FFAppState().viewListaInvetario == false)
                      Expanded(
                        child: wrapWithModel(
                          model: _model.inventoryDetailsDeviceModel,
                          updateCallback: () => safeSetState(() {}),
                          child: InventoryDetailsDeviceWidget(
                            idDevice: widget!.idDevice!,
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
