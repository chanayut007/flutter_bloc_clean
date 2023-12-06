// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_card_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreditCardListState {
  LoadApiStatus get loadApiStatus => throw _privateConstructorUsedError;
  List<CreditCardEntity> get creditCards => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreditCardListStateCopyWith<CreditCardListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditCardListStateCopyWith<$Res> {
  factory $CreditCardListStateCopyWith(
          CreditCardListState value, $Res Function(CreditCardListState) then) =
      _$CreditCardListStateCopyWithImpl<$Res, CreditCardListState>;
  @useResult
  $Res call(
      {LoadApiStatus loadApiStatus,
      List<CreditCardEntity> creditCards,
      int currentIndex,
      String errorMessage});
}

/// @nodoc
class _$CreditCardListStateCopyWithImpl<$Res, $Val extends CreditCardListState>
    implements $CreditCardListStateCopyWith<$Res> {
  _$CreditCardListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadApiStatus = null,
    Object? creditCards = null,
    Object? currentIndex = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      loadApiStatus: null == loadApiStatus
          ? _value.loadApiStatus
          : loadApiStatus // ignore: cast_nullable_to_non_nullable
              as LoadApiStatus,
      creditCards: null == creditCards
          ? _value.creditCards
          : creditCards // ignore: cast_nullable_to_non_nullable
              as List<CreditCardEntity>,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreditCardListStateImplCopyWith<$Res>
    implements $CreditCardListStateCopyWith<$Res> {
  factory _$$CreditCardListStateImplCopyWith(_$CreditCardListStateImpl value,
          $Res Function(_$CreditCardListStateImpl) then) =
      __$$CreditCardListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoadApiStatus loadApiStatus,
      List<CreditCardEntity> creditCards,
      int currentIndex,
      String errorMessage});
}

/// @nodoc
class __$$CreditCardListStateImplCopyWithImpl<$Res>
    extends _$CreditCardListStateCopyWithImpl<$Res, _$CreditCardListStateImpl>
    implements _$$CreditCardListStateImplCopyWith<$Res> {
  __$$CreditCardListStateImplCopyWithImpl(_$CreditCardListStateImpl _value,
      $Res Function(_$CreditCardListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadApiStatus = null,
    Object? creditCards = null,
    Object? currentIndex = null,
    Object? errorMessage = null,
  }) {
    return _then(_$CreditCardListStateImpl(
      loadApiStatus: null == loadApiStatus
          ? _value.loadApiStatus
          : loadApiStatus // ignore: cast_nullable_to_non_nullable
              as LoadApiStatus,
      creditCards: null == creditCards
          ? _value._creditCards
          : creditCards // ignore: cast_nullable_to_non_nullable
              as List<CreditCardEntity>,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreditCardListStateImpl implements _CreditCardListState {
  const _$CreditCardListStateImpl(
      {this.loadApiStatus = LoadApiStatus.initial,
      final List<CreditCardEntity> creditCards = const [],
      this.currentIndex = 0,
      this.errorMessage = ""})
      : _creditCards = creditCards;

  @override
  @JsonKey()
  final LoadApiStatus loadApiStatus;
  final List<CreditCardEntity> _creditCards;
  @override
  @JsonKey()
  List<CreditCardEntity> get creditCards {
    if (_creditCards is EqualUnmodifiableListView) return _creditCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_creditCards);
  }

  @override
  @JsonKey()
  final int currentIndex;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'CreditCardListState(loadApiStatus: $loadApiStatus, creditCards: $creditCards, currentIndex: $currentIndex, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditCardListStateImpl &&
            (identical(other.loadApiStatus, loadApiStatus) ||
                other.loadApiStatus == loadApiStatus) &&
            const DeepCollectionEquality()
                .equals(other._creditCards, _creditCards) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loadApiStatus,
      const DeepCollectionEquality().hash(_creditCards),
      currentIndex,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditCardListStateImplCopyWith<_$CreditCardListStateImpl> get copyWith =>
      __$$CreditCardListStateImplCopyWithImpl<_$CreditCardListStateImpl>(
          this, _$identity);
}

abstract class _CreditCardListState implements CreditCardListState {
  const factory _CreditCardListState(
      {final LoadApiStatus loadApiStatus,
      final List<CreditCardEntity> creditCards,
      final int currentIndex,
      final String errorMessage}) = _$CreditCardListStateImpl;

  @override
  LoadApiStatus get loadApiStatus;
  @override
  List<CreditCardEntity> get creditCards;
  @override
  int get currentIndex;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$CreditCardListStateImplCopyWith<_$CreditCardListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
