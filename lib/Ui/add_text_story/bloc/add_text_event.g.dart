// GENERATED CODE - DO NOT MODIFY BY HAND

part of add_text_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClearError extends ClearError {
  factory _$ClearError([void Function(ClearErrorBuilder) updates]) =>
      (new ClearErrorBuilder()..update(updates)).build();

  _$ClearError._() : super._();

  @override
  ClearError rebuild(void Function(ClearErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearErrorBuilder toBuilder() => new ClearErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearError;
  }

  @override
  int get hashCode {
    return 507656265;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ClearError').toString();
  }
}

class ClearErrorBuilder implements Builder<ClearError, ClearErrorBuilder> {
  _$ClearError _$v;

  ClearErrorBuilder();

  @override
  void replace(ClearError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ClearError;
  }

  @override
  void update(void Function(ClearErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClearError build() {
    final _$result = _$v ?? new _$ClearError._();
    replace(_$result);
    return _$result;
  }
}

class _$ChangeBackgroundEvent extends ChangeBackgroundEvent {
  @override
  final int background;

  factory _$ChangeBackgroundEvent(
          [void Function(ChangeBackgroundEventBuilder) updates]) =>
      (new ChangeBackgroundEventBuilder()..update(updates)).build();

  _$ChangeBackgroundEvent._({this.background}) : super._() {
    if (background == null) {
      throw new BuiltValueNullFieldError('ChangeBackgroundEvent', 'background');
    }
  }

  @override
  ChangeBackgroundEvent rebuild(
          void Function(ChangeBackgroundEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeBackgroundEventBuilder toBuilder() =>
      new ChangeBackgroundEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeBackgroundEvent && background == other.background;
  }

  @override
  int get hashCode {
    return $jf($jc(0, background.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChangeBackgroundEvent')
          ..add('background', background))
        .toString();
  }
}

class ChangeBackgroundEventBuilder
    implements Builder<ChangeBackgroundEvent, ChangeBackgroundEventBuilder> {
  _$ChangeBackgroundEvent _$v;

  int _background;
  int get background => _$this._background;
  set background(int background) => _$this._background = background;

  ChangeBackgroundEventBuilder();

  ChangeBackgroundEventBuilder get _$this {
    if (_$v != null) {
      _background = _$v.background;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeBackgroundEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ChangeBackgroundEvent;
  }

  @override
  void update(void Function(ChangeBackgroundEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChangeBackgroundEvent build() {
    final _$result =
        _$v ?? new _$ChangeBackgroundEvent._(background: background);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
