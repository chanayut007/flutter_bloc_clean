// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_card_billed_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreditCardBilledState {
  LoadApiStatus get loadApiStatus => throw _privateConstructorUsedError;
  List<CreditCardBilledEntity> get billedStatement =>
      throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreditCardBilledStateCopyWith<CreditCardBilledState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditCardBilledStateCopyWith<$Res> {
  factory $CreditCardBilledStateCopyWith(CreditCardBilledState value,
          $Res Function(CreditCardBilledState) then) =
      _$CreditCardBilledStateCopyWithImpl<$Res, CreditCardBilledState>;
  @useResult
  $Res call(
      {LoadApiStatus loadApiStatus,
      List<CreditCardBilledEntity> billedStatement,
      String errorMessage,
      DateTime? selectedDate});
}

/// @nodoc
class _$CreditCardBilledStateCopyWithImpl<$Res,
        $Val extends CreditCardBilledState>
    implements $CreditCardBilledStateCopyWith<$Res> {
  _$CreditCardBilledStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadApiStatus = null,
    Object? billedStatement = null,
    Object? errorMessage = null,
    Object? selectedDate = freezed,
  }) {
    return _then(_value.copyWith(
      loadApiStatus: null == loadApiStatus
          ? _value.loadApiStatus
          : loadApiStatus // ignore: cast_nullable_to_non_nullable
              as LoadApiStatus,
      billedStatement: null == billedStatement
          ? _value.billedStatement
          : billedStatement // ignore: cast_nullable_to_non_nullable
              as List<CreditCardBilledEntity>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreditCardBilledStateImplCopyWith<$Res>
    implements $CreditCardBilledStateCopyWith<$Res> {
  factory _$$CreditCardBilledStateImplCopyWith(
          _$CreditCardBilledStateImpl value,
          $Res Function(_$CreditCardBilledStateImpl) then) =
      __$$CreditCardBilledStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoadApiStatus loadApiStatus,
      List<CreditCardBilledEntity> billedStatement,
      String errorMessage,
      DateTime? selectedDate});
}

/// @nodoc
class __$$CreditCardBilledStateImplCopyWithImpl<$Res>
    extends _$CreditCardBilledStateCopyWithImpl<$Res,
        _$CreditCardBilledStateImpl>
    implements _$$CreditCardBilledStateImplCopyWith<$Res> {
  __$$CreditCardBilledStateImplCopyWithImpl(_$CreditCardBilledStateImpl _value,
      $Res Function(_$CreditCardBilledStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadApiStatus = null,
    Object? billedStatement = null,
    Object? errorMessage = null,
    Object? selectedDate = freezed,
  }) {
    return _then(_$CreditCardBilledStateImpl(
      loadApiStatus: null == loadApiStatus
          ? _value.loadApiStatus
          : loadApiStatus // ignore: cast_nullable_to_non_nullable
              as LoadApiStatus,
      billedStatement: null == billedStatement
          ? _value._billedStatement
          : billedStatement // ignore: cast_nullable_to_non_nullable
              as List<CreditCardBilledEntity>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$CreditCardBilledStateImpl implements _CreditCardBilledState {
  const _$CreditCardBilledStateImpl(
      {this.loadApiStatus = LoadApiStatus.initial,
      final List<CreditCardBilledEntity> billedStatement = const [],
      this.errorMessage = "",
      this.selectedDate})
      : _billedStatement = billedStatement;

  @override
  @JsonKey()
  final LoadApiStatus loadApiStatus;
  final List<CreditCardBilledEntity> _billedStatement;
  @override
  @JsonKey()
  List<CreditCardBilledEntity> get billedStatement {
    if (_billedStatement is EqualUnmodifiableListView) return _billedStatement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_billedStatement);
  }

  @override
  @JsonKey()
  final String errorMessage;
  @override
  final DateTime? selectedDate;

  @override
  String toString() {
    return 'CreditCardBilledState(loadApiStatus: $loadApiStatus, billedStatement: $billedStatement, errorMessage: $errorMessage, selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditCardBilledStateImpl &&
            (identical(other.loadApiStatus, loadApiStatus) ||
                other.loadApiStatus == loadApiStatus) &&
            const DeepCollectionEquality()
                .equals(other._billedStatement, _billedStatement) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loadApiStatus,
      const DeepCollectionEquality().hash(_billedStatement),
      errorMessage,
      selectedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditCardBilledStateImplCopyWith<_$CreditCardBilledStateImpl>
      get copyWith => __$$CreditCardBilledStateImplCopyWithImpl<
          _$CreditCardBilledStateImpl>(this, _$identity);
}

abstract class _CreditCardBilledState implements CreditCardBilledState {
  const factory _CreditCardBilledState(
      {final LoadApiStatus loadApiStatus,
      final List<CreditCardBilledEntity> billedStatement,
      final String errorMessage,
      final DateTime? selectedDate}) = _$CreditCardBilledStateImpl;

  @override
  LoadApiStatus get loadApiStatus;
  @override
  List<CreditCardBilledEntity> get billedStatement;
  @override
  String get errorMessage;
  @override
  DateTime? get selectedDate;
  @override
  @JsonKey(ignore: true)
  _$$CreditCardBilledStateImplCopyWith<_$CreditCardBilledStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
