import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_rive_controller.dart';
import '/flutter_flow/flutter_flow_static_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/lat_lng.dart';
import 'package:mapbox_search/mapbox_search.dart' as mapbox;
import 'package:rive/rive.dart' hide LinearGradient;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'base4_model.dart';
export 'base4_model.dart';

class Base4Widget extends StatefulWidget {
  const Base4Widget({super.key});

  @override
  State<Base4Widget> createState() => _Base4WidgetState();
}

class _Base4WidgetState extends State<Base4Widget> {
  late Base4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Base4Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            FFLocalizations.of(context).getText(
              'o2aizk10' /* Base Element 4 */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [
            FFButtonWidget(
              onPressed: () async {
                context.pushNamed('Base');
              },
              text: FFLocalizations.of(context).getText(
                'kdkrgeyr' /*  */,
              ),
              icon: FaIcon(
                FontAwesomeIcons.angleDoubleLeft,
                size: 15.0,
              ),
              options: FFButtonOptions(
                height: 40.0,
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Plus Jakarta Sans',
                      color: Colors.white,
                      letterSpacing: 0.0,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                context.pushNamed('HomePage1');
              },
              text: '',
              icon: Icon(
                Icons.home,
                size: 30.0,
              ),
              options: FFButtonOptions(
                height: 40.0,
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Plus Jakarta Sans',
                      color: Colors.white,
                      letterSpacing: 0.0,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'quaghanr' /* Map from my trip */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: FlutterFlowStaticMap(
                    location: LatLng(-13.16305555555, -72.545555555556),
                    apiKey:
                        'pk.eyJ1IjoiZGFyaW9yb2NoYSIsImEiOiJjbHlwaTQ2a2YwZTR5MnFxMmJmNHk5NDd4In0.scH3m1UV6HAxI8_jT0VS5g',
                    style: mapbox.MapBoxStyle.Dark,
                    width: 300.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                    borderRadius: BorderRadius.circular(6.0),
                    markerColor: FlutterFlowTheme.of(context).tertiary,
                    zoom: 10,
                    tilt: 0,
                    rotation: 0,
                  ),
                ),
              ),
              Text(
                FFLocalizations.of(context).getText(
                  'zvpmh7or' /* Chech this audio aobut Machu P... */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Plus Jakarta Sans',
                      letterSpacing: 0.0,
                    ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.5,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Container(
                    width: 198.0,
                    height: MediaQuery.sizeOf(context).height * 0.71,
                    child: RiveAnimation.asset(
                      'assets/rive_animations/me.riv',
                      artboard: 'Me-rive2',
                      fit: BoxFit.fitHeight,
                      controllers: _model.riveAnimationControllers,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                child: FlutterFlowAudioPlayer(
                  audio: Audio(
                    'assets/audios/machu-picchu-101-national-geographic-en-espanol-128-ytshorts.savetube.me.mp3',
                    metas: Metas(
                      id: 'machu-picchu-101-national-geographic-en-espanol-128-ytshorts.savetube.me.mp3-30d48d37',
                      title: 'Machu Pichu history',
                    ),
                  ),
                  titleTextStyle:
                      FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Outfit',
                            letterSpacing: 0.0,
                          ),
                  playbackDurationTextStyle:
                      FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Outfit',
                            letterSpacing: 0.0,
                          ),
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  playbackButtonColor: FlutterFlowTheme.of(context).primary,
                  activeTrackColor: FlutterFlowTheme.of(context).alternate,
                  elevation: 4.0,
                  playInBackground:
                      PlayInBackground.disabledRestoreOnForeground,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
