// GENERATED CODE - DO NOT MODIFY BY HAND

part of add_text_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddTextState extends AddTextState {
  @override
  final String error;
  @override
  final bool isLoading;
  @override
  final int currentIndex;

  factory _$AddTextState([void Function(AddTextStateBuilder) updates]) =>
      (new AddTextStateBuilder()..update(updates)).build();

  _$AddTextState._({this.error, this.isLoading, this.currentIndex})
      : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('AddTextState', 'error');
    }
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('AddTextState', 'isLoading');
    }
    if (currentIndex == null) {
      throw new BuiltValueNullFieldError('AddTextState', 'currentIndex');
    }
  }

  @override
  AddTextState rebuild(void Function(AddTextStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddTextStateBuilder toBuilder() => new AddTextStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddTextState &&
        error == other.error &&
        isLoading == other.isLoading &&
        currentIndex == other.currentIndex;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, error.hashCode), isLoading.hashCode),
        currentIndex.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddTextState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('currentIndex', currentIndex))
        .toString();
  }
}

class AddTextStateBuilder
    implements Builder<AddTextState, AddTextStateBuilder> {
  _$AddTextState _$v;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  int _currentIndex;
  int get currentIndex => _$this._currentIndex;
  set currentIndex(int currentIndex) => _$this._currentIndex = currentIndex;

  AddTextStateBuilder();

  AddTextStateBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _isLoading = _$v.isLoading;
      _currentIndex = _$v.currentIndex;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddTextState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddTextState;
  }

  @override
  void update(void Function(AddTextStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddTextState build() {
    final _$result = _$v ??
        new _$AddTextState._(
            error: error, isLoading: isLoading, currentIndex: currentIndex);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
