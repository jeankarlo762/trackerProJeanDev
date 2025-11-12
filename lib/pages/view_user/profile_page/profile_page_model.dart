import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:async';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'profile_page_widget.dart' show ProfilePageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfilePageModel extends FlutterFlowModel<ProfilePageWidget> {
  ///  Local state fields for this page.

  FFUploadedFile? uploadFoto;

  ///  State fields for stateful widgets in this page.

  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
  bool isDataUploading_uploadFotoBucket = false;
  FFUploadedFile uploadedLocalFile_uploadFotoBucket =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadFotoBucket = '';

  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<UserProfilesRow>? updateFoto;
  Completer<List<ViewProfileClientRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
  }

  @override
  void dispose() {
    sideBarNavModel.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
