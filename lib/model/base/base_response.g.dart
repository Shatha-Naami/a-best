// GENERATED CODE - DO NOT MODIFY BY HAND

part of base_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BaseResponse<Object>> _$baseResponseSerializer =
    new _$BaseResponseSerializer();

class _$BaseResponseSerializer
    implements StructuredSerializer<BaseResponse<Object>> {
  @override
  final Iterable<Type> types = const [BaseResponse, _$BaseResponse];
  @override
  final String wireName = 'BaseResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BaseResponse<Object> object,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterT =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = <Object>[];
    if (object.status != null) {
      result
        ..add('code')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(int)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data, specifiedType: parameterT));
    }
    return result;
  }

  @override
  BaseResponse<Object> deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterT =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = isUnderspecified
        ? new BaseResponseBuilder<Object>()
        : serializers.newBuilder(specifiedType) as BaseResponseBuilder;

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'code':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data =
              serializers.deserialize(value, specifiedType: parameterT);
          break;
      }
    }

    return result.build();
  }
}

class _$BaseResponse<T> extends BaseResponse<T> {
  @override
  final int status;
  @override
  final String message;
  @override
  final T data;

  factory _$BaseResponse([void Function(BaseResponseBuilder<T>) updates]) =>
      (new BaseResponseBuilder<T>()..update(updates)).build();

  _$BaseResponse._({this.status, this.message, this.data}) : super._() {
    if (T == dynamic) {
      throw new BuiltValueMissingGenericsError('BaseResponse', 'T');
    }
  }

  @override
  BaseResponse<T> rebuild(void Function(BaseResponseBuilder<T>) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseResponseBuilder<T> toBuilder() =>
      new BaseResponseBuilder<T>()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseResponse &&
        status == other.status &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, status.hashCode), message.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BaseResponse')
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class BaseResponseBuilder<T>
    implements Builder<BaseResponse<T>, BaseResponseBuilder<T>> {
  _$BaseResponse<T> _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  T _data;
  T get data => _$this._data;
  set data(T data) => _$this._data = data;

  BaseResponseBuilder();

  BaseResponseBuilder<T> get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _message = _$v.message;
      _data = _$v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseResponse<T> other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BaseResponse<T>;
  }

  @override
  void update(void Function(BaseResponseBuilder<T>) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BaseResponse<T> build() {
    final _$result = _$v ??
        new _$BaseResponse<T>._(status: status, message: message, data: data);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
