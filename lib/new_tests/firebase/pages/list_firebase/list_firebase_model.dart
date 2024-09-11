import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/new_tests/firebase/components/firebase_item_in_list_view/firebase_item_in_list_view_widget.dart';
import '/new_tests/general/components/drawer/drawer_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'list_firebase_widget.dart' show ListFirebaseWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ListFirebaseModel extends FlutterFlowModel<ListFirebaseWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ProductsRecord? createdDocumentFood;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ProductsRecord? createdDocumentDrinks;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ProductsRecord? createdDocumentHome;
  // Model for Drawer component.
  late DrawerModel drawerModel;

  @override
  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    drawerModel.dispose();
  }
}
