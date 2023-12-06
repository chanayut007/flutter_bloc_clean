import 'package:flutter_bloc_clean/domain/entity/card/card_list/card_list_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_list.g.dart';

@JsonSerializable()
class CreditCardList {
  @JsonKey(name: "citizenId")
  final String citizenId;
  @JsonKey(name: "cards")
  final List<CreditCardModel> cards;

  CreditCardList(this.citizenId, this.cards);

  factory CreditCardList.fromJson(Map<String, dynamic> json) => _$CreditCardListFromJson(json);

  CreditCardListEntity toEntity() => CreditCardListEntity(
    citizenId: citizenId,
    cards: cards.map((e) => e.toEntity()).toList()
  );

}

@JsonSerializable()
class CreditCardModel {

  @JsonKey(name: "cardName")
  final String cardName;

  @JsonKey(name: "cardHolderName")
  final String cardHolderName;

  @JsonKey(name: "cardNumber")
  final String cardNumber;

  @JsonKey(name: "cardImageUrl")
  final String cardImageUrl;

  @JsonKey(name: "creditLimit")
  final double creditLimit;

  @JsonKey(name: "availableCredit")
  final double availableCredit;

  @JsonKey(name: "minPay")
  final double minPay;

  @JsonKey(name: "fullPay")
  final double fullPay;

  @JsonKey(name: "statementDate")
  final DateTime statementDate;

  @JsonKey(name: "dueDate")
  final DateTime dueDate;

  CreditCardModel(this.cardName, this.cardHolderName, this.cardNumber, this.cardImageUrl, this.creditLimit, this.availableCredit, this.minPay, this.fullPay, this.statementDate, this.dueDate);

  factory CreditCardModel.fromJson(Map<String, dynamic> json) => _$CreditCardModelFromJson(json);

  CreditCardEntity toEntity() => CreditCardEntity(
    cardName: cardName,
    cardHolderName: cardHolderName,
    cardNumber: cardNumber,
    cardImageUrl: cardImageUrl,
    creditLimit: creditLimit,
    availableCredit: availableCredit,
    minPay: minPay,
    fullPay: fullPay,
    statementDate: statementDate,
    dueDate: dueDate
  );

}