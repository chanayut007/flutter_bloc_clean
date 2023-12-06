import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_list_entity.freezed.dart';

@freezed
class CreditCardListEntity with _$CreditCardListEntity {
  const factory CreditCardListEntity({
    @Default("") String citizenId,
    @Default([]) List<CreditCardEntity> cards
  }) = _CreditCardListEntity;
}

@freezed
class CreditCardEntity with _$CreditCardEntity {
  const factory CreditCardEntity({
    @Default("") String cardName,
    @Default("") String cardHolderName,
    @Default("") String cardNumber,
    @Default("") String cardImageUrl,
    @Default(0.00) double creditLimit,
    @Default(0.00) double availableCredit,
    @Default(0.00) double minPay,
    @Default(0.00) double fullPay,
    DateTime? statementDate,
    DateTime? dueDate,
  }) = _CreditCardEntity;
}