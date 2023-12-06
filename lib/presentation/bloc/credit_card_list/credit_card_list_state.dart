part of 'credit_card_list_cubit.dart';

@freezed
class CreditCardListState with _$CreditCardListState{
  const factory CreditCardListState({
    @Default(LoadApiStatus.initial) LoadApiStatus loadApiStatus,
    @Default([]) List<CreditCardEntity> creditCards,
    @Default(0) int currentIndex,
    @Default("") String errorMessage
}) = _CreditCardListState;
}
