part of 'credit_card_billed_cubit.dart';

@freezed
class CreditCardBilledState with _$CreditCardBilledState {
  const factory CreditCardBilledState({
    @Default(LoadApiStatus.initial) LoadApiStatus loadApiStatus,
    @Default([]) List<CreditCardBilledEntity> billedStatement,
    @Default("") String errorMessage,
    DateTime? selectedDate
}) = _CreditCardBilledState;
}
