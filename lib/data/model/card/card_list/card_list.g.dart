// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreditCardList _$CreditCardListFromJson(Map<String, dynamic> json) =>
    CreditCardList(
      json['citizenId'] as String,
      (json['cards'] as List<dynamic>)
          .map((e) => CreditCardModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreditCardListToJson(CreditCardList instance) =>
    <String, dynamic>{
      'citizenId': instance.citizenId,
      'cards': instance.cards,
    };

CreditCardModel _$CreditCardModelFromJson(Map<String, dynamic> json) =>
    CreditCardModel(
      json['cardName'] as String,
      json['cardHolderName'] as String,
      json['cardNumber'] as String,
      json['cardImageUrl'] as String,
      (json['creditLimit'] as num).toDouble(),
      (json['availableCredit'] as num).toDouble(),
      (json['minPay'] as num).toDouble(),
      (json['fullPay'] as num).toDouble(),
      DateTime.parse(json['statementDate'] as String),
      DateTime.parse(json['dueDate'] as String),
    );

Map<String, dynamic> _$CreditCardModelToJson(CreditCardModel instance) =>
    <String, dynamic>{
      'cardName': instance.cardName,
      'cardHolderName': instance.cardHolderName,
      'cardNumber': instance.cardNumber,
      'cardImageUrl': instance.cardImageUrl,
      'creditLimit': instance.creditLimit,
      'availableCredit': instance.availableCredit,
      'minPay': instance.minPay,
      'fullPay': instance.fullPay,
      'statementDate': instance.statementDate.toIso8601String(),
      'dueDate': instance.dueDate.toIso8601String(),
    };
