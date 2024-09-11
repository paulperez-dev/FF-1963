import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/new_tests/general/components/custom_alert/custom_alert_widget.dart';
import 'dart:math';
import 'firebase_doc_item_info_widget.dart' show FirebaseDocItemInfoWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class FirebaseDocItemInfoModel
    extends FlutterFlowModel<FirebaseDocItemInfoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for ChangeName widget.
  FocusNode? changeNameFocusNode;
  TextEditingController? changeNameTextController;
  String? Function(BuildContext, String?)? changeNameTextControllerValidator;
  String? _changeNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'f0vv4pli' /* Field is required */,
      );
    }

    if (val.length < 5) {
      return FFLocalizations.of(context).getText(
        'jq8c79kd' /* Minimum 5 characters */,
      );
    }
    if (val.length > 25) {
      return FFLocalizations.of(context).getText(
        'ncby1nl3' /* Maximum 15 characters */,
      );
    }

    return null;
  }

  // State field(s) for ChangeDescription widget.
  FocusNode? changeDescriptionFocusNode;
  TextEditingController? changeDescriptionTextController;
  String? Function(BuildContext, String?)?
      changeDescriptionTextControllerValidator;
  String? _changeDescriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '7yxdq2ga' /* Field is required */,
      );
    }

    if (val.length < 5) {
      return FFLocalizations.of(context).getText(
        'dzm5rw0a' /* Minimum 5 characters */,
      );
    }
    if (val.length > 60) {
      return FFLocalizations.of(context).getText(
        'onoaiaa3' /* Maximum 60 characters */,
      );
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? formValidated;

  @override
  void initState(BuildContext context) {
    changeNameTextControllerValidator = _changeNameTextControllerValidator;
    changeDescriptionTextControllerValidator =
        _changeDescriptionTextControllerValidator;
  }

  @override
  void dispose() {
    changeNameFocusNode?.dispose();
    changeNameTextController?.dispose();

    changeDescriptionFocusNode?.dispose();
    changeDescriptionTextController?.dispose();
  }
}
