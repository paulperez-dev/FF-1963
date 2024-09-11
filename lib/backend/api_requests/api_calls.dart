import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';
import 'interceptors.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start ApiGroup Group Code

class ApiGroupGroup {
  static String getBaseUrl() => 'https://api.pexels.com/';
  static Map<String, String> headers = {};
  static GetImageGroupCall getImageGroupCall = GetImageGroupCall();
}

class GetImageGroupCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiGroupGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetImageGroup',
      apiUrl: '${baseUrl}v1/search?query=trip',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'mGaWQXnS7rlORxaOAhGA9kYcG0veC4iDUyowEpnuQpaHKUuqvS7mtv6P',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End ApiGroup Group Code

/// Start Import Swagger API Group Code

class ImportSwaggerAPIGroup {
  static String getBaseUrl() => 'https://petstore3.swagger.io/api/v3';
  static Map<String, String> headers = {};
  static UpdatePetCall updatePetCall = UpdatePetCall();
  static AddPetCall addPetCall = AddPetCall();
  static FindPetsByStatusCall findPetsByStatusCall = FindPetsByStatusCall();
  static FindPetsByTagsCall findPetsByTagsCall = FindPetsByTagsCall();
  static GetPetByIdCall getPetByIdCall = GetPetByIdCall();
  static UpdatePetWithFormCall updatePetWithFormCall = UpdatePetWithFormCall();
  static DeletePetCall deletePetCall = DeletePetCall();
  static UploadFileCall uploadFileCall = UploadFileCall();
  static GetInventoryCall getInventoryCall = GetInventoryCall();
  static PlaceOrderCall placeOrderCall = PlaceOrderCall();
  static GetOrderByIdCall getOrderByIdCall = GetOrderByIdCall();
  static DeleteOrderCall deleteOrderCall = DeleteOrderCall();
  static CreateUserCall createUserCall = CreateUserCall();
  static CreateUsersWithListInputCall createUsersWithListInputCall =
      CreateUsersWithListInputCall();
  static LoginUserCall loginUserCall = LoginUserCall();
  static LogoutUserCall logoutUserCall = LogoutUserCall();
  static GetUserByNameCall getUserByNameCall = GetUserByNameCall();
  static UpdateUserCall updateUserCall = UpdateUserCall();
  static DeleteUserCall deleteUserCall = DeleteUserCall();
}

class UpdatePetCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ImportSwaggerAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": 10,
  "name": "doggie",
  "category": {
    "id": 1,
    "name": "Dogs"
  },
  "photoUrls": [
    ""
  ],
  "tags": [
    {
      "id": 0,
      "name": ""
    }
  ],
  "status": "available"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updatePet',
      apiUrl: '${baseUrl}/pet',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddPetCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ImportSwaggerAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": 10,
  "name": "doggie",
  "category": {
    "id": 1,
    "name": "Dogs"
  },
  "photoUrls": [
    ""
  ],
  "tags": [
    {
      "id": 0,
      "name": ""
    }
  ],
  "status": "available"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addPet',
      apiUrl: '${baseUrl}/pet',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FindPetsByStatusCall {
  Future<ApiCallResponse> call({
    String? status = '',
  }) async {
    final baseUrl = ImportSwaggerAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'findPetsByStatus',
      apiUrl: '${baseUrl}/pet/findByStatus',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'status': status,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FindPetsByTagsCall {
  Future<ApiCallResponse> call({
    List<String>? tagsList,
  }) async {
    final baseUrl = ImportSwaggerAPIGroup.getBaseUrl();
    final tags = _serializeList(tagsList);

    return ApiManager.instance.makeApiCall(
      callName: 'findPetsByTags',
      apiUrl: '${baseUrl}/pet/findByTags',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'tags': tags,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPetByIdCall {
  Future<ApiCallResponse> call({
    int? petId,
    String? apiKey = '',
  }) async {
    final baseUrl = ImportSwaggerAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getPetById',
      apiUrl: '${baseUrl}/pet/${petId}',
      callType: ApiCallType.GET,
      headers: {
        'api_key': '${apiKey}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdatePetWithFormCall {
  Future<ApiCallResponse> call({
    int? petId,
    String? name = '',
    String? status = '',
  }) async {
    final baseUrl = ImportSwaggerAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'updatePetWithForm',
      apiUrl: '${baseUrl}/pet/${petId}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletePetCall {
  Future<ApiCallResponse> call({
    String? apiKey = '',
    int? petId,
  }) async {
    final baseUrl = ImportSwaggerAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deletePet',
      apiUrl: '${baseUrl}/pet/${petId}',
      callType: ApiCallType.DELETE,
      headers: {
        'api_key': '${apiKey}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UploadFileCall {
  Future<ApiCallResponse> call({
    int? petId,
    String? additionalMetadata = '',
  }) async {
    final baseUrl = ImportSwaggerAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'uploadFile',
      apiUrl: '${baseUrl}/pet/${petId}/uploadImage',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetInventoryCall {
  Future<ApiCallResponse> call({
    String? apiKey = '',
  }) async {
    final baseUrl = ImportSwaggerAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getInventory',
      apiUrl: '${baseUrl}/store/inventory',
      callType: ApiCallType.GET,
      headers: {
        'api_key': '${apiKey}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PlaceOrderCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ImportSwaggerAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": 10,
  "petId": 198772,
  "quantity": 7,
  "shipDate": "",
  "status": "approved",
  "complete": false
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'placeOrder',
      apiUrl: '${baseUrl}/store/order',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetOrderByIdCall {
  Future<ApiCallResponse> call({
    int? orderId,
  }) async {
    final baseUrl = ImportSwaggerAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getOrderById',
      apiUrl: '${baseUrl}/store/order/${orderId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteOrderCall {
  Future<ApiCallResponse> call({
    int? orderId,
  }) async {
    final baseUrl = ImportSwaggerAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deleteOrder',
      apiUrl: '${baseUrl}/store/order/${orderId}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateUserCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ImportSwaggerAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": 10,
  "username": "theUser",
  "firstName": "John",
  "lastName": "James",
  "email": "john@email.com",
  "password": "12345",
  "phone": "12345",
  "userStatus": 1
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createUser',
      apiUrl: '${baseUrl}/user',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateUsersWithListInputCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ImportSwaggerAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
[
  {
    "id": 10,
    "username": "theUser",
    "firstName": "John",
    "lastName": "James",
    "email": "john@email.com",
    "password": "12345",
    "phone": "12345",
    "userStatus": 1
  }
]''';
    return ApiManager.instance.makeApiCall(
      callName: 'createUsersWithListInput',
      apiUrl: '${baseUrl}/user/createWithList',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginUserCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
  }) async {
    final baseUrl = ImportSwaggerAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'loginUser',
      apiUrl: '${baseUrl}/user/login',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'username': username,
        'password': password,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LogoutUserCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ImportSwaggerAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'logoutUser',
      apiUrl: '${baseUrl}/user/logout',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserByNameCall {
  Future<ApiCallResponse> call({
    String? username = '',
  }) async {
    final baseUrl = ImportSwaggerAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getUserByName',
      apiUrl: '${baseUrl}/user/${username}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateUserCall {
  Future<ApiCallResponse> call({
    String? username = '',
  }) async {
    final baseUrl = ImportSwaggerAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": 10,
  "username": "theUser",
  "firstName": "John",
  "lastName": "James",
  "email": "john@email.com",
  "password": "12345",
  "phone": "12345",
  "userStatus": 1
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateUser',
      apiUrl: '${baseUrl}/user/${username}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteUserCall {
  Future<ApiCallResponse> call({
    String? username = '',
  }) async {
    final baseUrl = ImportSwaggerAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deleteUser',
      apiUrl: '${baseUrl}/user/${username}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Import Swagger API Group Code

class GetImagesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetImages',
      apiUrl: 'https://api.pexels.com/v1/search?query=trip',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'mGaWQXnS7rlORxaOAhGA9kYcG0veC4iDUyowEpnuQpaHKUuqvS7mtv6P',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? goodImages(dynamic response) => (getJsonField(
        response,
        r'''$.photos[:].src.medium''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetVideoCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetVideo',
      apiUrl: 'https://api.pexels.com/videos/search?query=nature&per_page=1',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'mGaWQXnS7rlORxaOAhGA9kYcG0veC4iDUyowEpnuQpaHKUuqvS7mtv6P',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? getVideo1(dynamic response) => (getJsonField(
        response,
        r'''$.videos[:].video_files[:].link''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class TestInterceptorCall {
  static Future<ApiCallResponse> call() async {
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'Test Interceptor',
        apiUrl: 'https://api.pexels.com/v1/search?query=trip',
        callType: ApiCallType.GET,
        headers: {
          'Authorization':
              'mGaWQXnS7rlORxaOAhGA9kYcG0veC4iDUyowEpnuQpaHKUuqvS7mtv6P',
        },
        params: {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      interceptors,
    );
  }

  static final interceptors = [
    ExampleInterceptor(),
  ];
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
