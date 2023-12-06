// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_card_billed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreditCardBilled _$CreditCardBilledFromJson(Map<String, dynamic> json) =>
    CreditCardBilled(
      json['description'] as String,
      DateTime.parse(json['statementDate'] as String),
      (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$CreditCardBilledToJson(CreditCardBilled instance) =>
    <String, dynamic>{
      'description': instance.description,
      'statementDate': instance.statementDate.toIso8601String(),
      'amount': instance.amount,
    };
