// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreditCardListEntity {
  String get citizenId => throw _privateConstructorUsedError;
  List<CreditCardEntity> get cards => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreditCardListEntityCopyWith<CreditCardListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditCardListEntityCopyWith<$Res> {
  factory $CreditCardListEntityCopyWith(CreditCardListEntity value,
          $Res Function(CreditCardListEntity) then) =
      _$CreditCardListEntityCopyWithImpl<$Res, CreditCardListEntity>;
  @useResult
  $Res call({String citizenId, List<CreditCardEntity> cards});
}

/// @nodoc
class _$CreditCardListEntityCopyWithImpl<$Res,
        $Val extends CreditCardListEntity>
    implements $CreditCardListEntityCopyWith<$Res> {
  _$CreditCardListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? citizenId = null,
    Object? cards = null,
  }) {
    return _then(_value.copyWith(
      citizenId: null == citizenId
          ? _value.citizenId
          : citizenId // ignore: cast_nullable_to_non_nullable
              as String,
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CreditCardEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreditCardListEntityImplCopyWith<$Res>
    implements $CreditCardListEntityCopyWith<$Res> {
  factory _$$CreditCardListEntityImplCopyWith(_$CreditCardListEntityImpl value,
          $Res Function(_$CreditCardListEntityImpl) then) =
      __$$CreditCardListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String citizenId, List<CreditCardEntity> cards});
}

/// @nodoc
class __$$CreditCardListEntityImplCopyWithImpl<$Res>
    extends _$CreditCardListEntityCopyWithImpl<$Res, _$CreditCardListEntityImpl>
    implements _$$CreditCardListEntityImplCopyWith<$Res> {
  __$$CreditCardListEntityImplCopyWithImpl(_$CreditCardListEntityImpl _value,
      $Res Function(_$CreditCardListEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? citizenId = null,
    Object? cards = null,
  }) {
    return _then(_$CreditCardListEntityImpl(
      citizenId: null == citizenId
          ? _value.citizenId
          : citizenId // ignore: cast_nullable_to_non_nullable
              as String,
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CreditCardEntity>,
    ));
  }
}

/// @nodoc

class _$CreditCardListEntityImpl implements _CreditCardListEntity {
  const _$CreditCardListEntityImpl(
      {this.citizenId = "", final List<CreditCardEntity> cards = const []})
      : _cards = cards;

  @override
  @JsonKey()
  final String citizenId;
  final List<CreditCardEntity> _cards;
  @override
  @JsonKey()
  List<CreditCardEntity> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  String toString() {
    return 'CreditCardListEntity(citizenId: $citizenId, cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditCardListEntityImpl &&
            (identical(other.citizenId, citizenId) ||
                other.citizenId == citizenId) &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, citizenId, const DeepCollectionEquality().hash(_cards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditCardListEntityImplCopyWith<_$CreditCardListEntityImpl>
      get copyWith =>
          __$$CreditCardListEntityImplCopyWithImpl<_$CreditCardListEntityImpl>(
              this, _$identity);
}

abstract class _CreditCardListEntity implements CreditCardListEntity {
  const factory _CreditCardListEntity(
      {final String citizenId,
      final List<CreditCardEntity> cards}) = _$CreditCardListEntityImpl;

  @override
  String get citizenId;
  @override
  List<CreditCardEntity> get cards;
  @override
  @JsonKey(ignore: true)
  _$$CreditCardListEntityImplCopyWith<_$CreditCardListEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreditCardEntity {
  String get cardName => throw _privateConstructorUsedError;
  String get cardHolderName => throw _privateConstructorUsedError;
  String get cardNumber => throw _privateConstructorUsedError;
  String get cardImageUrl => throw _privateConstructorUsedError;
  double get creditLimit => throw _privateConstructorUsedError;
  double get availableCredit => throw _privateConstructorUsedError;
  double get minPay => throw _privateConstructorUsedError;
  double get fullPay => throw _privateConstructorUsedError;
  DateTime? get statementDate => throw _privateConstructorUsedError;
  DateTime? get dueDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreditCardEntityCopyWith<CreditCardEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditCardEntityCopyWith<$Res> {
  factory $CreditCardEntityCopyWith(
          CreditCardEntity value, $Res Function(CreditCardEntity) then) =
      _$CreditCardEntityCopyWithImpl<$Res, CreditCardEntity>;
  @useResult
  $Res call(
      {String cardName,
      String cardHolderName,
      String cardNumber,
      String cardImageUrl,
      double creditLimit,
      double availableCredit,
      double minPay,
      double fullPay,
      DateTime? statementDate,
      DateTime? dueDate});
}

/// @nodoc
class _$CreditCardEntityCopyWithImpl<$Res, $Val extends CreditCardEntity>
    implements $CreditCardEntityCopyWith<$Res> {
  _$CreditCardEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardName = null,
    Object? cardHolderName = null,
    Object? cardNumber = null,
    Object? cardImageUrl = null,
    Object? creditLimit = null,
    Object? availableCredit = null,
    Object? minPay = null,
    Object? fullPay = null,
    Object? statementDate = freezed,
    Object? dueDate = freezed,
  }) {
    return _then(_value.copyWith(
      cardName: null == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String,
      cardHolderName: null == cardHolderName
          ? _value.cardHolderName
          : cardHolderName // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cardImageUrl: null == cardImageUrl
          ? _value.cardImageUrl
          : cardImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      creditLimit: null == creditLimit
          ? _value.creditLimit
          : creditLimit // ignore: cast_nullable_to_non_nullable
              as double,
      availableCredit: null == availableCredit
          ? _value.availableCredit
          : availableCredit // ignore: cast_nullable_to_non_nullable
              as double,
      minPay: null == minPay
          ? _value.minPay
          : minPay // ignore: cast_nullable_to_non_nullable
              as double,
      fullPay: null == fullPay
          ? _value.fullPay
          : fullPay // ignore: cast_nullable_to_non_nullable
              as double,
      statementDate: freezed == statementDate
          ? _value.statementDate
          : statementDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreditCardEntityImplCopyWith<$Res>
    implements $CreditCardEntityCopyWith<$Res> {
  factory _$$CreditCardEntityImplCopyWith(_$CreditCardEntityImpl value,
          $Res Function(_$CreditCardEntityImpl) then) =
      __$$CreditCardEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cardName,
      String cardHolderName,
      String cardNumber,
      String cardImageUrl,
      double creditLimit,
      double availableCredit,
      double minPay,
      double fullPay,
      DateTime? statementDate,
      DateTime? dueDate});
}

/// @nodoc
class __$$CreditCardEntityImplCopyWithImpl<$Res>
    extends _$CreditCardEntityCopyWithImpl<$Res, _$CreditCardEntityImpl>
    implements _$$CreditCardEntityImplCopyWith<$Res> {
  __$$CreditCardEntityImplCopyWithImpl(_$CreditCardEntityImpl _value,
      $Res Function(_$CreditCardEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardName = null,
    Object? cardHolderName = null,
    Object? cardNumber = null,
    Object? cardImageUrl = null,
    Object? creditLimit = null,
    Object? availableCredit = null,
    Object? minPay = null,
    Object? fullPay = null,
    Object? statementDate = freezed,
    Object? dueDate = freezed,
  }) {
    return _then(_$CreditCardEntityImpl(
      cardName: null == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String,
      cardHolderName: null == cardHolderName
          ? _value.cardHolderName
          : cardHolderName // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cardImageUrl: null == cardImageUrl
          ? _value.cardImageUrl
          : cardImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      creditLimit: null == creditLimit
          ? _value.creditLimit
          : creditLimit // ignore: cast_nullable_to_non_nullable
              as double,
      availableCredit: null == availableCredit
          ? _value.availableCredit
          : availableCredit // ignore: cast_nullable_to_non_nullable
              as double,
      minPay: null == minPay
          ? _value.minPay
          : minPay // ignore: cast_nullable_to_non_nullable
              as double,
      fullPay: null == fullPay
          ? _value.fullPay
          : fullPay // ignore: cast_nullable_to_non_nullable
              as double,
      statementDate: freezed == statementDate
          ? _value.statementDate
          : statementDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$CreditCardEntityImpl implements _CreditCardEntity {
  const _$CreditCardEntityImpl(
      {this.cardName = "",
      this.cardHolderName = "",
      this.cardNumber = "",
      this.cardImageUrl = "",
      this.creditLimit = 0.0,
      this.availableCredit = 0.0,
      this.minPay = 0.0,
      this.fullPay = 0.0,
      this.statementDate,
      this.dueDate});

  @override
  @JsonKey()
  final String cardName;
  @override
  @JsonKey()
  final String cardHolderName;
  @override
  @JsonKey()
  final String cardNumber;
  @override
  @JsonKey()
  final String cardImageUrl;
  @override
  @JsonKey()
  final double creditLimit;
  @override
  @JsonKey()
  final double availableCredit;
  @override
  @JsonKey()
  final double minPay;
  @override
  @JsonKey()
  final double fullPay;
  @override
  final DateTime? statementDate;
  @override
  final DateTime? dueDate;

  @override
  String toString() {
    return 'CreditCardEntity(cardName: $cardName, cardHolderName: $cardHolderName, cardNumber: $cardNumber, cardImageUrl: $cardImageUrl, creditLimit: $creditLimit, availableCredit: $availableCredit, minPay: $minPay, fullPay: $fullPay, statementDate: $statementDate, dueDate: $dueDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditCardEntityImpl &&
            (identical(other.cardName, cardName) ||
                other.cardName == cardName) &&
            (identical(other.cardHolderName, cardHolderName) ||
                other.cardHolderName == cardHolderName) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.cardImageUrl, cardImageUrl) ||
                other.cardImageUrl == cardImageUrl) &&
            (identical(other.creditLimit, creditLimit) ||
                other.creditLimit == creditLimit) &&
            (identical(other.availableCredit, availableCredit) ||
                other.availableCredit == availableCredit) &&
            (identical(other.minPay, minPay) || other.minPay == minPay) &&
            (identical(other.fullPay, fullPay) || other.fullPay == fullPay) &&
            (identical(other.statementDate, statementDate) ||
                other.statementDate == statementDate) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      cardName,
      cardHolderName,
      cardNumber,
      cardImageUrl,
      creditLimit,
      availableCredit,
      minPay,
      fullPay,
      statementDate,
      dueDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditCardEntityImplCopyWith<_$CreditCardEntityImpl> get copyWith =>
      __$$CreditCardEntityImplCopyWithImpl<_$CreditCardEntityImpl>(
          this, _$identity);
}

abstract class _CreditCardEntity implements CreditCardEntity {
  const factory _CreditCardEntity(
      {final String cardName,
      final String cardHolderName,
      final String cardNumber,
      final String cardImageUrl,
      final double creditLimit,
      final double availableCredit,
      final double minPay,
      final double fullPay,
      final DateTime? statementDate,
      final DateTime? dueDate}) = _$CreditCardEntityImpl;

  @override
  String get cardName;
  @override
  String get cardHolderName;
  @override
  String get cardNumber;
  @override
  String get cardImageUrl;
  @override
  double get creditLimit;
  @override
  double get availableCredit;
  @override
  double get minPay;
  @override
  double get fullPay;
  @override
  DateTime? get statementDate;
  @override
  DateTime? get dueDate;
  @override
  @JsonKey(ignore: true)
  _$$CreditCardEntityImplCopyWith<_$CreditCardEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
