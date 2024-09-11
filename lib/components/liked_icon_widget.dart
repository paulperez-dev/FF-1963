import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'liked_icon_model.dart';
export 'liked_icon_model.dart';

class LikedIconWidget extends StatefulWidget {
  const LikedIconWidget({super.key});

  @override
  State<LikedIconWidget> createState() => _LikedIconWidgetState();
}

class _LikedIconWidgetState extends State<LikedIconWidget> {
  late LikedIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LikedIconModel());

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

    return Align(
      alignment: AlignmentDirectional(-1.0, 0.0),
      child: ToggleIcon(
        onPressed: () async {
          safeSetState(() => FFAppState().Liked = !FFAppState().Liked);
        },
        value: FFAppState().Liked,
        onIcon: Icon(
          Icons.favorite,
          color: FlutterFlowTheme.of(context).primaryBackground,
          size: 30.0,
        ),
        offIcon: Icon(
          Icons.favorite_border,
          color: FlutterFlowTheme.of(context).primaryBackground,
          size: 30.0,
        ),
      ),
    );
  }
}
