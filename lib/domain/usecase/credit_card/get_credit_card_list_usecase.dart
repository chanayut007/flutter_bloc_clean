import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_clean/domain/entity/card/card_list/card_list_entity.dart';
import 'package:flutter_bloc_clean/domain/failure/failure.dart';
import 'package:flutter_bloc_clean/domain/repository/krung_sri_repository.dart';
import 'package:flutter_bloc_clean/domain/usecase/use_case.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetCreditCardListUseCase extends UseCaseAsync<CreditCardListEntity, String> {

  final KrungSriRepository _krungSriRepository;

  GetCreditCardListUseCase(this._krungSriRepository);

  @override
  Future<Either<Failure, CreditCardListEntity>> call(String params) {
    return _krungSriRepository.getCreditCards(params);
  }

}