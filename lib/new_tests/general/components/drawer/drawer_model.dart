import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/new_tests/general/components/menu_button/menu_button_widget.dart';
import 'dart:math';
import 'drawer_widget.dart' show DrawerWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DrawerModel extends FlutterFlowModel<DrawerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // Model for MenuButton component.
  late MenuButtonModel menuButtonModel1;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // Model for MenuButton component.
  late MenuButtonModel menuButtonModel2;
  // Model for MenuButton component.
  late MenuButtonModel menuButtonModel3;
  // Model for MenuButton component.
  late MenuButtonModel menuButtonModel4;

  @override
  void initState(BuildContext context) {
    menuButtonModel1 = createModel(context, () => MenuButtonModel());
    menuButtonModel2 = createModel(context, () => MenuButtonModel());
    menuButtonModel3 = createModel(context, () => MenuButtonModel());
    menuButtonModel4 = createModel(context, () => MenuButtonModel());
  }

  @override
  void dispose() {
    expandableExpandableController1.dispose();
    menuButtonModel1.dispose();
    expandableExpandableController2.dispose();
    menuButtonModel2.dispose();
    menuButtonModel3.dispose();
    menuButtonModel4.dispose();
  }
}
