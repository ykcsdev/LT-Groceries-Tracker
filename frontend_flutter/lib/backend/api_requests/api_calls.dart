import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Grocery Receipt API Group Code

class GroceryReceiptAPIGroup {
  static String getBaseUrl() => 'http://16.171.239.213:8000/';
  static Map<String, String> headers = {};
  static UploadReceiptAPICall uploadReceiptAPICall = UploadReceiptAPICall();
  static GetRecieptStatusCall getRecieptStatusCall = GetRecieptStatusCall();
  static GetAllInvoicesCall getAllInvoicesCall = GetAllInvoicesCall();
  static GetAllInvoicesCopyCall getAllInvoicesCopyCall =
      GetAllInvoicesCopyCall();
  static GetRecentExpCall getRecentExpCall = GetRecentExpCall();
  static GetReceiptDetailsCall getReceiptDetailsCall = GetReceiptDetailsCall();
  static UpdateProductDetailsCall updateProductDetailsCall =
      UpdateProductDetailsCall();
  static GetTopItemsCall getTopItemsCall = GetTopItemsCall();
  static GetMonthlySpendingsCall getMonthlySpendingsCall =
      GetMonthlySpendingsCall();
}

class UploadReceiptAPICall {
  Future<ApiCallResponse> call({
    FFUploadedFile? file,
  }) async {
    final baseUrl = GroceryReceiptAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'UploadReceiptAPI',
      apiUrl: '${baseUrl}receipts/upload',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRecieptStatusCall {
  Future<ApiCallResponse> call({
    String? receiptId = '',
  }) async {
    final baseUrl = GroceryReceiptAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getRecieptStatus',
      apiUrl: '${baseUrl}receipts/${receiptId}/status',
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

class GetAllInvoicesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = GroceryReceiptAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllInvoices',
      apiUrl: '${baseUrl}invoices/',
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

  List<String>? superMarketName(dynamic response) => (getJsonField(
        response,
        r'''$[:].merchant_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? totalpaid(dynamic response) => (getJsonField(
        response,
        r'''$[:].total_paid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? invoiceNo(dynamic response) => (getJsonField(
        response,
        r'''$[:].invoice_number''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? date(dynamic response) => (getJsonField(
        response,
        r'''$[:].purchase_datetime''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? receiptId(dynamic response) => (getJsonField(
        response,
        r'''$[:].receipt_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paymentMethod(dynamic response) => (getJsonField(
        response,
        r'''$[:].payment_method''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? all(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GetAllInvoicesCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = GroceryReceiptAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllInvoices Copy',
      apiUrl: '${baseUrl}invoices/',
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

  List<String>? superMarketName(dynamic response) => (getJsonField(
        response,
        r'''$[:].merchant_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? totalpaid(dynamic response) => (getJsonField(
        response,
        r'''$[:].total_paid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? invoiceNo(dynamic response) => (getJsonField(
        response,
        r'''$[:].invoice_number''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? date(dynamic response) => (getJsonField(
        response,
        r'''$[:].purchase_datetime''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? receiptId(dynamic response) => (getJsonField(
        response,
        r'''$[:].receipt_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paymentMethod(dynamic response) => (getJsonField(
        response,
        r'''$[:].payment_method''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? all(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GetRecentExpCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = GroceryReceiptAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getRecentExp',
      apiUrl: '${baseUrl}invoices/recentExp',
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

  List<String>? superMarketName(dynamic response) => (getJsonField(
        response,
        r'''$[:].merchant_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? totalpaid(dynamic response) => (getJsonField(
        response,
        r'''$[:].total_paid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? invoiceNo(dynamic response) => (getJsonField(
        response,
        r'''$[:].invoice_number''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? date(dynamic response) => (getJsonField(
        response,
        r'''$[:].purchase_datetime''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? receiptId(dynamic response) => (getJsonField(
        response,
        r'''$[:].receipt_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paymentMethod(dynamic response) => (getJsonField(
        response,
        r'''$[:].payment_method''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? all(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GetReceiptDetailsCall {
  Future<ApiCallResponse> call({
    String? receiptNumber = '',
  }) async {
    final baseUrl = GroceryReceiptAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getReceiptDetails',
      apiUrl: '${baseUrl}invoices/receipts/${receiptNumber}',
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

  List? itemsList(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      ) as List?;
  dynamic all(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class UpdateProductDetailsCall {
  Future<ApiCallResponse> call({
    String? productName = '',
    String? productId = '',
    double? unitPrice = 0,
    double? quantity = 0,
    String? unit = '',
    double? lineTotal = 0,
    double? discount = 0,
    String? receiptId = '',
  }) async {
    final baseUrl = GroceryReceiptAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "product_name": "${escapeStringForJson(productName)}",
  "unit_price": ${unitPrice},
  "quantity": ${quantity},
  "unit": "${escapeStringForJson(unit)}",
  "line_total": ${lineTotal},
  "discount": ${discount},
  "product_id": "${escapeStringForJson(productId)}",
  "receipt_id": "${escapeStringForJson(receiptId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateProductDetails',
      apiUrl: '${baseUrl}receipts/updateItems/',
      callType: ApiCallType.PUT,
      headers: {
        'Content-Type': 'application/json',
      },
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

class GetTopItemsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = GroceryReceiptAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getTopItems',
      apiUrl: '${baseUrl}receipts/topItemsByCategory',
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

class GetMonthlySpendingsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = GroceryReceiptAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getMonthlySpendings',
      apiUrl: '${baseUrl}invoices/monthlySpending',
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

/// End Grocery Receipt API Group Code

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

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
