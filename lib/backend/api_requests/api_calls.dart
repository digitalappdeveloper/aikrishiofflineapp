import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class DetectDiseaseCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? image,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DetectDisease',
      apiUrl: 'https://ai-krishi-api.onrender.com/predict',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'image': image,
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

  static List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$.status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static dynamic diseasename(dynamic response) => getJsonField(
        response,
        r'''$.prediction''',
      );
  static dynamic confidence(dynamic response) => getJsonField(
        response,
        r'''$.confidence''',
      );
}

class MarketrpiceCall {
  static Future<ApiCallResponse> call({
    String? vState = 'Uttar Pradesh',
    String? vCrop = 'Tomato',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'marketrpice',
      apiUrl:
          'https://api.data.gov.in/resource/35985678-0d79-46b4-9ed6-6f13308a1d24?api-key=579b464db66ec23bdd0000017c128b41303d4abf4c9ca6c51603631a&format=json&limit=10',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'api-key': "579b464db66ec23bdd0000017c128b41303d4abf4c9ca6c51603631a",
        'format': "json",
        'limit': "50",
        'filters[state]': "v_state",
        'filters[commodity]': "v_crop",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? mandiList(dynamic response) => getJsonField(
        response,
        r'''$.records''',
        true,
      ) as List?;
  static dynamic fasalkaNaam(dynamic response) => getJsonField(
        response,
        r'''$.records[:].commodity''',
      );
  static dynamic mandikaNaam(dynamic response) => getJsonField(
        response,
        r'''$.records[:].market''',
      );
  static dynamic zilaDistrict(dynamic response) => getJsonField(
        response,
        r'''$.records[:].district''',
      );
  static dynamic modalBhavAveragePrice(dynamic response) => getJsonField(
        response,
        r'''$.records[:].modal_price''',
      );
  static dynamic minimumBhav(dynamic response) => getJsonField(
        response,
        r'''$.records[:].min_price''',
      );
  static dynamic maximumBhav(dynamic response) => getJsonField(
        response,
        r'''$.records[:].max_price''',
      );
  static dynamic updateDate(dynamic response) => getJsonField(
        response,
        r'''$.records[:].arrival_date''',
      );
}

class GetAgriSchemesCall {
  static Future<ApiCallResponse> call({
    String? catName = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetAgriSchemes',
      apiUrl: 'https://sheetdb.io/api/v1/40koqrihmgg9a',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'limit': "10",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic allrecords(dynamic response) => getJsonField(
        response,
        r'''$.*''',
      );
  static dynamic scheme(dynamic response) => getJsonField(
        response,
        r'''$.scheme_name''',
      );
  static dynamic photo(dynamic response) => getJsonField(
        response,
        r'''$.image_url''',
      );
  static dynamic info(dynamic response) => getJsonField(
        response,
        r'''$.description''',
      );
}

class WeatherAPICall {
  static Future<ApiCallResponse> call({
    String? city = 'Simdega',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Weather API',
      apiUrl:
          'https://api.openweathermap.org/data/2.5/weather?q=Simdega&appid=2f31f73be47e6400a0d6da6c6bf09310&units=metric&lang=hi',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'q': city,
        'appid': "2f31f73be47e6400a0d6da6c6bf09310",
        'units': "metric",
        'lang': "hi",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic temp(dynamic response) => getJsonField(
        response,
        r'''$.main.temp''',
      );
  static dynamic humidity(dynamic response) => getJsonField(
        response,
        r'''$.main.humidity''',
      );
  static dynamic windspeed(dynamic response) => getJsonField(
        response,
        r'''$.wind.speed''',
      );
  static dynamic description(dynamic response) => getJsonField(
        response,
        r'''$.weather[0].description''',
      );
  static dynamic cityname(dynamic response) => getJsonField(
        response,
        r'''$.name''',
      );
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
