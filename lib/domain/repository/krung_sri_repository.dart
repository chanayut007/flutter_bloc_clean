import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_clean/domain/entity/card/card_billed/card_billed_entity.dart';
import 'package:flutter_bloc_clean/domain/entity/card/card_list/card_list_entity.dart';
import 'package:flutter_bloc_clean/domain/failure/failure.dart';

import '../../model/schema/billed/get_billed_by_card_number_schema.dart';

abstract class KrungSriRepository {
  Future<Either<Failure, CreditCardListEntity>> getCreditCards(String id);
  Future<Either<Failure, List<CreditCardBilledEntity>>> getUnBilledByCardNumber(String cardNumber);
  Future<Either<Failure, List<CreditCardBilledEntity>>> getBilledByCardNumber(GetBilledByCardNumberSchema params);
}