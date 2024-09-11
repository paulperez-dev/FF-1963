import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/new_tests/general/components/ask_pin/ask_pin_widget.dart';
import '/new_tests/general/components/custom_alert/custom_alert_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

Future setAppLanguage(BuildContext context) async {}

Future createProductFirebase(BuildContext context) async {
  bool? verified;
  bool bioConfirm = false;
  ProductsRecord? createdDocumentFood;

  if (isWeb) {
    await showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      enableDrag: false,
      context: context,
      builder: (context) {
        return WebViewAware(
          child: Padding(
            padding: MediaQuery.viewInsetsOf(context),
            child: AskPinWidget(),
          ),
        );
      },
    ).then((value) => verified = value);

    if (!verified!) {
      await showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        enableDrag: false,
        context: context,
        builder: (context) {
          return WebViewAware(
            child: Padding(
              padding: MediaQuery.viewInsetsOf(context),
              child: CustomAlertWidget(
                type: CustomSnackbarTypes.error,
                message: 'Error while verifiying PIN',
              ),
            ),
          );
        },
      );

      return;
    }
  } else {
    final _localAuth = LocalAuthentication();
    bool _isBiometricSupported = await _localAuth.isDeviceSupported();

    if (_isBiometricSupported) {
      bioConfirm = await _localAuth.authenticate(
          localizedReason: FFLocalizations.of(context).getText(
        'v32psgeo' /* Verificate yourself */,
      ));
    }

    if (!bioConfirm!) {
      await showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        enableDrag: false,
        context: context,
        builder: (context) {
          return WebViewAware(
            child: Padding(
              padding: MediaQuery.viewInsetsOf(context),
              child: CustomAlertWidget(
                type: CustomSnackbarTypes.error,
                message: 'Error while verifiying Biometrics',
              ),
            ),
          );
        },
      );

      return;
    }
  }

  var productsRecordReference = ProductsRecord.collection.doc();
  await productsRecordReference.set(createProductsRecordData(
    name: 'Product ${random_data.randomInteger(2, 10).toString()}',
    description: random_data.randomString(
      8,
      32,
      true,
      true,
      false,
    ),
    specifications: random_data.randomString(
      8,
      32,
      true,
      true,
      false,
    ),
    price: random_data.randomDouble(1.0, 10.0),
    createdAt: getCurrentTimestamp,
    modifiedAt: getCurrentTimestamp,
    onSale: true,
    salePrice: random_data.randomDouble(2.0, 8.0) +
        random_data.randomDouble(3.0, 10.0),
    quantity: random_data.randomInteger(1, 10),
    image: random_data.randomImageUrl(
      180,
      180,
    ),
    category: ProductCategory.food,
  ));
  createdDocumentFood = ProductsRecord.getDocumentFromData(
      createProductsRecordData(
        name: 'Product ${random_data.randomInteger(2, 10).toString()}',
        description: random_data.randomString(
          8,
          32,
          true,
          true,
          false,
        ),
        specifications: random_data.randomString(
          8,
          32,
          true,
          true,
          false,
        ),
        price: random_data.randomDouble(1.0, 10.0),
        createdAt: getCurrentTimestamp,
        modifiedAt: getCurrentTimestamp,
        onSale: true,
        salePrice: random_data.randomDouble(2.0, 8.0) +
            random_data.randomDouble(3.0, 10.0),
        quantity: random_data.randomInteger(1, 10),
        image: random_data.randomImageUrl(
          180,
          180,
        ),
        category: ProductCategory.food,
      ),
      productsRecordReference);
  await showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    enableDrag: false,
    context: context,
    builder: (context) {
      return WebViewAware(
        child: Padding(
          padding: MediaQuery.viewInsetsOf(context),
          child: CustomAlertWidget(
            type: CustomSnackbarTypes.success,
            message: 'Product created',
          ),
        ),
      );
    },
  );
}
