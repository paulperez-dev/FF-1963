import '/components/liked_icon_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'base_widget.dart' show BaseWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BaseModel extends FlutterFlowModel<BaseWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for LikedIcon component.
  late LikedIconModel likedIconModel;

  @override
  void initState(BuildContext context) {
    likedIconModel = createModel(context, () => LikedIconModel());
  }

  @override
  void dispose() {
    likedIconModel.dispose();
  }
}
