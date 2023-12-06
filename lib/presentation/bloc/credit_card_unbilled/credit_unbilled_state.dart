part of 'credit_unbilled_cubit.dart';

@freezed
class CreditUnbilledState with _$CreditUnbilledState {
  const factory CreditUnbilledState.initial() = _Initial;
  const factory CreditUnbilledState.loading() = _Loading;
  const factory CreditUnbilledState.loaded(List<CreditCardBilledEntity> unBilledStatement) = _Loaded;
  const factory CreditUnbilledState.error(String errorMessage) = _Error;
}
