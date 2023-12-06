// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_billed_by_card_number_schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetBilledByCardNumberSchema {
  String get cardNumber => throw _privateConstructorUsedError;
  String get asOf => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetBilledByCardNumberSchemaCopyWith<GetBilledByCardNumberSchema>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBilledByCardNumberSchemaCopyWith<$Res> {
  factory $GetBilledByCardNumberSchemaCopyWith(
          GetBilledByCardNumberSchema value,
          $Res Function(GetBilledByCardNumberSchema) then) =
      _$GetBilledByCardNumberSchemaCopyWithImpl<$Res,
          GetBilledByCardNumberSchema>;
  @useResult
  $Res call({String cardNumber, String asOf});
}

/// @nodoc
class _$GetBilledByCardNumberSchemaCopyWithImpl<$Res,
        $Val extends GetBilledByCardNumberSchema>
    implements $GetBilledByCardNumberSchemaCopyWith<$Res> {
  _$GetBilledByCardNumberSchemaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? asOf = null,
  }) {
    return _then(_value.copyWith(
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      asOf: null == asOf
          ? _value.asOf
          : asOf // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetBilledByCardNumberSchemaImplCopyWith<$Res>
    implements $GetBilledByCardNumberSchemaCopyWith<$Res> {
  factory _$$GetBilledByCardNumberSchemaImplCopyWith(
          _$GetBilledByCardNumberSchemaImpl value,
          $Res Function(_$GetBilledByCardNumberSchemaImpl) then) =
      __$$GetBilledByCardNumberSchemaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cardNumber, String asOf});
}

/// @nodoc
class __$$GetBilledByCardNumberSchemaImplCopyWithImpl<$Res>
    extends _$GetBilledByCardNumberSchemaCopyWithImpl<$Res,
        _$GetBilledByCardNumberSchemaImpl>
    implements _$$GetBilledByCardNumberSchemaImplCopyWith<$Res> {
  __$$GetBilledByCardNumberSchemaImplCopyWithImpl(
      _$GetBilledByCardNumberSchemaImpl _value,
      $Res Function(_$GetBilledByCardNumberSchemaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? asOf = null,
  }) {
    return _then(_$GetBilledByCardNumberSchemaImpl(
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      asOf: null == asOf
          ? _value.asOf
          : asOf // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetBilledByCardNumberSchemaImpl
    implements _GetBilledByCardNumberSchema {
  const _$GetBilledByCardNumberSchemaImpl(
      {this.cardNumber = "", this.asOf = ""});

  @override
  @JsonKey()
  final String cardNumber;
  @override
  @JsonKey()
  final String asOf;

  @override
  String toString() {
    return 'GetBilledByCardNumberSchema(cardNumber: $cardNumber, asOf: $asOf)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBilledByCardNumberSchemaImpl &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.asOf, asOf) || other.asOf == asOf));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardNumber, asOf);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBilledByCardNumberSchemaImplCopyWith<_$GetBilledByCardNumberSchemaImpl>
      get copyWith => __$$GetBilledByCardNumberSchemaImplCopyWithImpl<
          _$GetBilledByCardNumberSchemaImpl>(this, _$identity);
}

abstract class _GetBilledByCardNumberSchema
    implements GetBilledByCardNumberSchema {
  const factory _GetBilledByCardNumberSchema(
      {final String cardNumber,
      final String asOf}) = _$GetBilledByCardNumberSchemaImpl;

  @override
  String get cardNumber;
  @override
  String get asOf;
  @override
  @JsonKey(ignore: true)
  _$$GetBilledByCardNumberSchemaImplCopyWith<_$GetBilledByCardNumberSchemaImpl>
      get copyWith => throw _privateConstructorUsedError;
}
