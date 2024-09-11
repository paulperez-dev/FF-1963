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
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'list_firebase_model.dart';
export 'list_firebase_model.dart';

class ListFirebaseWidget extends StatefulWidget {
  const ListFirebaseWidget({super.key});

  @override
  State<ListFirebaseWidget> createState() => _ListFirebaseWidgetState();
}

class _ListFirebaseWidgetState extends State<ListFirebaseWidget>
    with TickerProviderStateMixin {
  late ListFirebaseModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListFirebaseModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        drawer: Drawer(
          elevation: 16.0,
          child: WebViewAware(
            child: wrapWithModel(
              model: _model.drawerModel,
              updateCallback: () => safeSetState(() {}),
              child: DrawerWidget(),
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            FFLocalizations.of(context).getText(
              'cllrscfn' /* ListView Test */,
            ),
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: 'Outfit',
                  letterSpacing: 0.0,
                ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              icon: Icon(
                Icons.dehaze,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
              onPressed: () async {
                scaffoldKey.currentState!.openDrawer();
              },
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment(-1.0, 0),
                    child: FlutterFlowButtonTabBar(
                      useToggleButtonStyle: false,
                      isScrollable: true,
                      labelStyle:
                          FlutterFlowTheme.of(context).titleMedium.override(
                                fontFamily: 'Plus Jakarta Sans',
                                letterSpacing: 0.0,
                              ),
                      unselectedLabelStyle: TextStyle(),
                      labelColor: FlutterFlowTheme.of(context).primary,
                      unselectedLabelColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      backgroundColor: FlutterFlowTheme.of(context).accent1,
                      borderColor: FlutterFlowTheme.of(context).primary,
                      borderWidth: 2.0,
                      borderRadius: 12.0,
                      elevation: 0.0,
                      labelPadding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      buttonMargin:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 16.0, 0.0),
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      tabs: [
                        Tab(
                          text: FFLocalizations.of(context).getText(
                            'awhybdzy' /* Food */,
                          ),
                        ),
                        Tab(
                          text: FFLocalizations.of(context).getText(
                            'tcq0o1ob' /* Drinks */,
                          ),
                        ),
                        Tab(
                          text: FFLocalizations.of(context).getText(
                            'd5gl996s' /* Home */,
                          ),
                        ),
                      ],
                      controller: _model.tabBarController,
                      onTap: (i) async {
                        [() async {}, () async {}, () async {}][i]();
                      },
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _model.tabBarController,
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 18.0, 16.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      var productsRecordReference =
                                          ProductsRecord.collection.doc();
                                      await productsRecordReference
                                          .set(createProductsRecordData(
                                        name:
                                            'Product ${random_data.randomInteger(2, 10).toString()}',
                                        description: random_data.randomString(
                                          8,
                                          32,
                                          true,
                                          true,
                                          false,
                                        ),
                                        specifications:
                                            random_data.randomString(
                                          8,
                                          32,
                                          true,
                                          true,
                                          false,
                                        ),
                                        price:
                                            random_data.randomDouble(1.0, 10.0),
                                        createdAt: getCurrentTimestamp,
                                        modifiedAt: getCurrentTimestamp,
                                        onSale: true,
                                        salePrice: random_data.randomDouble(
                                                2.0, 8.0) +
                                            random_data.randomDouble(3.0, 10.0),
                                        quantity:
                                            random_data.randomInteger(1, 10),
                                        image: random_data.randomImageUrl(
                                          180,
                                          180,
                                        ),
                                        category: ProductCategory.food,
                                      ));
                                      _model.createdDocumentFood =
                                          ProductsRecord.getDocumentFromData(
                                              createProductsRecordData(
                                                name:
                                                    'Product ${random_data.randomInteger(2, 10).toString()}',
                                                description:
                                                    random_data.randomString(
                                                  8,
                                                  32,
                                                  true,
                                                  true,
                                                  false,
                                                ),
                                                specifications:
                                                    random_data.randomString(
                                                  8,
                                                  32,
                                                  true,
                                                  true,
                                                  false,
                                                ),
                                                price: random_data.randomDouble(
                                                    1.0, 10.0),
                                                createdAt: getCurrentTimestamp,
                                                modifiedAt: getCurrentTimestamp,
                                                onSale: true,
                                                salePrice: random_data
                                                        .randomDouble(
                                                            2.0, 8.0) +
                                                    random_data.randomDouble(
                                                        3.0, 10.0),
                                                quantity: random_data
                                                    .randomInteger(1, 10),
                                                image:
                                                    random_data.randomImageUrl(
                                                  180,
                                                  180,
                                                ),
                                                category: ProductCategory.food,
                                              ),
                                              productsRecordReference);

                                      safeSetState(() {});
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'levkw12s' /* Create Product */,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
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
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 16.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'r977stuy' /* Categories */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              StreamBuilder<List<ProductsRecord>>(
                                stream: queryProductsRecord(
                                  queryBuilder: (productsRecord) =>
                                      productsRecord.where(
                                    'category',
                                    isEqualTo: ProductCategory.food.serialize(),
                                  ),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<ProductsRecord>
                                      listViewProductsRecordList =
                                      snapshot.data!;

                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewProductsRecordList.length,
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewProductsRecord =
                                          listViewProductsRecordList[
                                              listViewIndex];
                                      return FirebaseItemInListViewWidget(
                                        key: Key(
                                            'Keyyya_${listViewIndex}_of_${listViewProductsRecordList.length}'),
                                        itemDocument: listViewProductsRecord,
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 18.0, 16.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      var productsRecordReference =
                                          ProductsRecord.collection.doc();
                                      await productsRecordReference
                                          .set(createProductsRecordData(
                                        name:
                                            'Product ${random_data.randomInteger(2, 10).toString()}',
                                        description: random_data.randomString(
                                          8,
                                          32,
                                          true,
                                          true,
                                          false,
                                        ),
                                        specifications:
                                            random_data.randomString(
                                          8,
                                          32,
                                          true,
                                          true,
                                          false,
                                        ),
                                        price:
                                            random_data.randomDouble(1.0, 10.0),
                                        createdAt: getCurrentTimestamp,
                                        modifiedAt: getCurrentTimestamp,
                                        onSale: true,
                                        salePrice: random_data.randomDouble(
                                                2.0, 8.0) +
                                            random_data.randomDouble(3.0, 10.0),
                                        quantity:
                                            random_data.randomInteger(1, 10),
                                        image: random_data.randomImageUrl(
                                          180,
                                          180,
                                        ),
                                        category: ProductCategory.drinks,
                                      ));
                                      _model.createdDocumentDrinks =
                                          ProductsRecord.getDocumentFromData(
                                              createProductsRecordData(
                                                name:
                                                    'Product ${random_data.randomInteger(2, 10).toString()}',
                                                description:
                                                    random_data.randomString(
                                                  8,
                                                  32,
                                                  true,
                                                  true,
                                                  false,
                                                ),
                                                specifications:
                                                    random_data.randomString(
                                                  8,
                                                  32,
                                                  true,
                                                  true,
                                                  false,
                                                ),
                                                price: random_data.randomDouble(
                                                    1.0, 10.0),
                                                createdAt: getCurrentTimestamp,
                                                modifiedAt: getCurrentTimestamp,
                                                onSale: true,
                                                salePrice: random_data
                                                        .randomDouble(
                                                            2.0, 8.0) +
                                                    random_data.randomDouble(
                                                        3.0, 10.0),
                                                quantity: random_data
                                                    .randomInteger(1, 10),
                                                image:
                                                    random_data.randomImageUrl(
                                                  180,
                                                  180,
                                                ),
                                                category:
                                                    ProductCategory.drinks,
                                              ),
                                              productsRecordReference);

                                      safeSetState(() {});
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      '1lisy595' /* Create Product */,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
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
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 16.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '0qql4q82' /* Categories */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              StreamBuilder<List<ProductsRecord>>(
                                stream: queryProductsRecord(
                                  queryBuilder: (productsRecord) =>
                                      productsRecord.where(
                                    'category',
                                    isEqualTo:
                                        ProductCategory.drinks.serialize(),
                                  ),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<ProductsRecord>
                                      listViewProductsRecordList =
                                      snapshot.data!;

                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewProductsRecordList.length,
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewProductsRecord =
                                          listViewProductsRecordList[
                                              listViewIndex];
                                      return FirebaseItemInListViewWidget(
                                        key: Key(
                                            'Key7lq_${listViewIndex}_of_${listViewProductsRecordList.length}'),
                                        itemDocument: listViewProductsRecord,
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 18.0, 16.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      var productsRecordReference =
                                          ProductsRecord.collection.doc();
                                      await productsRecordReference
                                          .set(createProductsRecordData(
                                        name:
                                            'Product ${random_data.randomInteger(2, 10).toString()}',
                                        description: random_data.randomString(
                                          8,
                                          32,
                                          true,
                                          true,
                                          false,
                                        ),
                                        specifications:
                                            random_data.randomString(
                                          8,
                                          32,
                                          true,
                                          true,
                                          false,
                                        ),
                                        price:
                                            random_data.randomDouble(1.0, 10.0),
                                        createdAt: getCurrentTimestamp,
                                        modifiedAt: getCurrentTimestamp,
                                        onSale: true,
                                        salePrice: random_data.randomDouble(
                                                2.0, 8.0) +
                                            random_data.randomDouble(3.0, 10.0),
                                        quantity:
                                            random_data.randomInteger(1, 10),
                                        image: random_data.randomImageUrl(
                                          180,
                                          180,
                                        ),
                                        category: ProductCategory.home,
                                      ));
                                      _model.createdDocumentHome =
                                          ProductsRecord.getDocumentFromData(
                                              createProductsRecordData(
                                                name:
                                                    'Product ${random_data.randomInteger(2, 10).toString()}',
                                                description:
                                                    random_data.randomString(
                                                  8,
                                                  32,
                                                  true,
                                                  true,
                                                  false,
                                                ),
                                                specifications:
                                                    random_data.randomString(
                                                  8,
                                                  32,
                                                  true,
                                                  true,
                                                  false,
                                                ),
                                                price: random_data.randomDouble(
                                                    1.0, 10.0),
                                                createdAt: getCurrentTimestamp,
                                                modifiedAt: getCurrentTimestamp,
                                                onSale: true,
                                                salePrice: random_data
                                                        .randomDouble(
                                                            2.0, 8.0) +
                                                    random_data.randomDouble(
                                                        3.0, 10.0),
                                                quantity: random_data
                                                    .randomInteger(1, 10),
                                                image:
                                                    random_data.randomImageUrl(
                                                  180,
                                                  180,
                                                ),
                                                category: ProductCategory.home,
                                              ),
                                              productsRecordReference);

                                      safeSetState(() {});
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'nl2cndwa' /* Create Product */,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
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
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 16.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'jdvncm90' /* Categories */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              StreamBuilder<List<ProductsRecord>>(
                                stream: queryProductsRecord(
                                  queryBuilder: (productsRecord) =>
                                      productsRecord.where(
                                    'category',
                                    isEqualTo: ProductCategory.home.serialize(),
                                  ),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<ProductsRecord>
                                      listViewProductsRecordList =
                                      snapshot.data!;

                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewProductsRecordList.length,
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewProductsRecord =
                                          listViewProductsRecordList[
                                              listViewIndex];
                                      return FirebaseItemInListViewWidget(
                                        key: Key(
                                            'Keyrnh_${listViewIndex}_of_${listViewProductsRecordList.length}'),
                                        itemDocument: listViewProductsRecord,
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
