import '/components/inventario/inventory_details_device/inventory_details_device_widget.dart';
import '/components/inventario/inventory_list/inventory_list_widget.dart';
import '/components/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'inventory_page_widget.dart' show InventoryPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InventoryPageModel extends FlutterFlowModel<InventoryPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
  // Model for inventoryList component.
  late InventoryListModel inventoryListModel;
  // Model for inventoryDetailsDevice component.
  late InventoryDetailsDeviceModel inventoryDetailsDeviceModel;

  @override
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
    inventoryListModel = createModel(context, () => InventoryListModel());
    inventoryDetailsDeviceModel =
        createModel(context, () => InventoryDetailsDeviceModel());
  }

  @override
  void dispose() {
    sideBarNavModel.dispose();
    inventoryListModel.dispose();
    inventoryDetailsDeviceModel.dispose();
  }
}
