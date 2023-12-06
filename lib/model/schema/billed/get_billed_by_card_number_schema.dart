import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_billed_by_card_number_schema.freezed.dart';

@freezed
class GetBilledByCardNumberSchema with _$GetBilledByCardNumberSchema{
  const factory GetBilledByCardNumberSchema({
    @Default("") String cardNumber,
    @Default("") String asOf
}) = _GetBilledByCardNumberSchema;
}