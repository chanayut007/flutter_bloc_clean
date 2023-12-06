// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_billed_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreditCardBilledEntity {
  String get description => throw _privateConstructorUsedError;
  DateTime? get statementDate => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreditCardBilledEntityCopyWith<CreditCardBilledEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditCardBilledEntityCopyWith<$Res> {
  factory $CreditCardBilledEntityCopyWith(CreditCardBilledEntity value,
          $Res Function(CreditCardBilledEntity) then) =
      _$CreditCardBilledEntityCopyWithImpl<$Res, CreditCardBilledEntity>;
  @useResult
  $Res call({String description, DateTime? statementDate, double amount});
}

/// @nodoc
class _$CreditCardBilledEntityCopyWithImpl<$Res,
        $Val extends CreditCardBilledEntity>
    implements $CreditCardBilledEntityCopyWith<$Res> {
  _$CreditCardBilledEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? statementDate = freezed,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      statementDate: freezed == statementDate
          ? _value.statementDate
          : statementDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreditCardBilledEntityImplCopyWith<$Res>
    implements $CreditCardBilledEntityCopyWith<$Res> {
  factory _$$CreditCardBilledEntityImplCopyWith(
          _$CreditCardBilledEntityImpl value,
          $Res Function(_$CreditCardBilledEntityImpl) then) =
      __$$CreditCardBilledEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, DateTime? statementDate, double amount});
}

/// @nodoc
class __$$CreditCardBilledEntityImplCopyWithImpl<$Res>
    extends _$CreditCardBilledEntityCopyWithImpl<$Res,
        _$CreditCardBilledEntityImpl>
    implements _$$CreditCardBilledEntityImplCopyWith<$Res> {
  __$$CreditCardBilledEntityImplCopyWithImpl(
      _$CreditCardBilledEntityImpl _value,
      $Res Function(_$CreditCardBilledEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? statementDate = freezed,
    Object? amount = null,
  }) {
    return _then(_$CreditCardBilledEntityImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      statementDate: freezed == statementDate
          ? _value.statementDate
          : statementDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CreditCardBilledEntityImpl implements _CreditCardBilledEntity {
  const _$CreditCardBilledEntityImpl(
      {this.description = "", this.statementDate, this.amount = 0.00});

  @override
  @JsonKey()
  final String description;
  @override
  final DateTime? statementDate;
  @override
  @JsonKey()
  final double amount;

  @override
  String toString() {
    return 'CreditCardBilledEntity(description: $description, statementDate: $statementDate, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditCardBilledEntityImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.statementDate, statementDate) ||
                other.statementDate == statementDate) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, description, statementDate, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditCardBilledEntityImplCopyWith<_$CreditCardBilledEntityImpl>
      get copyWith => __$$CreditCardBilledEntityImplCopyWithImpl<
          _$CreditCardBilledEntityImpl>(this, _$identity);
}

abstract class _CreditCardBilledEntity implements CreditCardBilledEntity {
  const factory _CreditCardBilledEntity(
      {final String description,
      final DateTime? statementDate,
      final double amount}) = _$CreditCardBilledEntityImpl;

  @override
  String get description;
  @override
  DateTime? get statementDate;
  @override
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$$CreditCardBilledEntityImplCopyWith<_$CreditCardBilledEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
