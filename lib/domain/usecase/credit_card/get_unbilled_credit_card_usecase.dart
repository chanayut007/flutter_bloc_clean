import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_clean/domain/entity/card/card_billed/card_billed_entity.dart';
import 'package:flutter_bloc_clean/domain/failure/failure.dart';
import 'package:flutter_bloc_clean/domain/repository/krung_sri_repository.dart';
import 'package:flutter_bloc_clean/domain/usecase/use_case.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetUnBilledCreditCardUseCase extends UseCaseAsync<List<CreditCardBilledEntity>, String> {

  final KrungSriRepository krungSriRepository;

  GetUnBilledCreditCardUseCase(this.krungSriRepository);

  @override
  Future<Either<Failure, List<CreditCardBilledEntity>>> call(String params) async {
    return krungSriRepository.getUnBilledByCardNumber(params);
  }

}