import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_clean/domain/entity/card/card_billed/card_billed_entity.dart';
import 'package:flutter_bloc_clean/domain/failure/failure.dart';
import 'package:flutter_bloc_clean/domain/repository/krung_sri_repository.dart';
import 'package:flutter_bloc_clean/domain/usecase/use_case.dart';
import 'package:flutter_bloc_clean/model/schema/billed/get_billed_by_card_number_schema.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetBilledCreditCardUseCase extends UseCaseAsync<List<CreditCardBilledEntity>, GetBilledByCardNumberSchema> {

  final KrungSriRepository krungSriRepository;

  GetBilledCreditCardUseCase(this.krungSriRepository);

  @override
  Future<Either<Failure, List<CreditCardBilledEntity>>> call(GetBilledByCardNumberSchema params) {
    return krungSriRepository.getBilledByCardNumber(params);
  }

}