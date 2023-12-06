import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_clean/data/data_source/remote/api/api_service.dart';
import 'package:flutter_bloc_clean/domain/entity/card/card_list/card_list_entity.dart';
import 'package:flutter_bloc_clean/domain/entity/card/card_billed/card_billed_entity.dart';
import 'package:flutter_bloc_clean/domain/failure/failure.dart';
import 'package:flutter_bloc_clean/domain/failure/failure_message.dart';
import 'package:flutter_bloc_clean/domain/repository/krung_sri_repository.dart';
import 'package:flutter_bloc_clean/model/schema/billed/get_billed_by_card_number_schema.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: KrungSriRepository)
class KrungsriImplementation extends KrungSriRepository {

  final ApiService _apiService;

  KrungsriImplementation(this._apiService);

  @override
  Future<Either<Failure, CreditCardListEntity>> getCreditCards(String id) async {
    try {
      final result = await _apiService.getCreditCard(id);
      return Right(result.toEntity());
    } catch (e) {
      return Left(FailureMessage.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<CreditCardBilledEntity>>> getUnBilledByCardNumber(String cardNumber) async {
    try {
      final result = await _apiService.getUnBillCreditCardByCardNumber(cardNumber);
      return Right(result.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(FailureMessage.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<CreditCardBilledEntity>>> getBilledByCardNumber(GetBilledByCardNumberSchema params) async {
    try {
      final cardNumber = params.cardNumber;
      final asOf = params.asOf;
      final result = await _apiService.getBillCreditCardByCardNumber(cardNumber, asOf);
      return Right(result.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(FailureMessage.fromException(e));
    }
  }

}