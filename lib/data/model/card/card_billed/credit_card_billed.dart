import 'package:flutter_bloc_clean/domain/entity/card/card_billed/card_billed_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'credit_card_billed.g.dart';

@JsonSerializable()
class CreditCardBilled {
  @JsonKey(name: "description")
  final String description;
  @JsonKey(name: "statementDate")
  final DateTime statementDate;
  @JsonKey(name: "amount")
  final double amount;

  CreditCardBilled(this.description, this.statementDate, this.amount);

  factory CreditCardBilled.fromJson(Map<String, dynamic> json) => _$CreditCardBilledFromJson(json);

  CreditCardBilledEntity toEntity() => CreditCardBilledEntity(
      description: description,
      statementDate: statementDate,
      amount: amount
  );
}