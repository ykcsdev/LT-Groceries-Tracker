import '/backend/api_requests/api_calls.dart';
import '/components/edit_product_screen_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'items_view_widget.dart' show ItemsViewWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ItemsViewModel extends FlutterFlowModel<ItemsViewWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for editProductScreen component.
  late EditProductScreenModel editProductScreenModel;

  @override
  void initState(BuildContext context) {
    editProductScreenModel =
        createModel(context, () => EditProductScreenModel());
  }

  @override
  void dispose() {
    editProductScreenModel.dispose();
  }
}
