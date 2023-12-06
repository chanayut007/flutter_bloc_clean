import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_billed_entity.freezed.dart';

@freezed
class CreditCardBilledEntity with _$CreditCardBilledEntity {
  const factory CreditCardBilledEntity({
    @Default("") String description,
    DateTime? statementDate,
    @Default(0.00) double amount
}) = _CreditCardBilledEntity;
}