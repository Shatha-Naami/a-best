library base_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:best/model/serializer/serializer.dart';

part 'base_response.g.dart';


abstract class BaseResponse<T> implements Built<BaseResponse<T>, BaseResponseBuilder<T>> {
  @nullable
  @BuiltValueField(wireName: 'code')
  int get status;
  @nullable
  String get message;

  @nullable
  T get data;

  BaseResponse._();

  factory BaseResponse([updates(BaseResponseBuilder<T> b)]) = _$BaseResponse<T>;

  String toJson() {
    return json.encode(serializers.serializeWith(BaseResponse.serializer, this));
  }

  static BaseResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        BaseResponse.serializer, json.decode(jsonString));
  }

  static Serializer<BaseResponse> get serializer => _$baseResponseSerializer;
}
