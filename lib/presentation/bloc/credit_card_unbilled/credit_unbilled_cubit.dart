import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_clean/di/injector.dart';
import 'package:flutter_bloc_clean/domain/entity/card/card_billed/card_billed_entity.dart';
import 'package:flutter_bloc_clean/domain/usecase/credit_card/get_unbilled_credit_card_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'credit_unbilled_state.dart';
part 'credit_unbilled_cubit.freezed.dart';

class CreditUnbilledCubit extends Cubit<CreditUnbilledState> {
  CreditUnbilledCubit() : super(const CreditUnbilledState.initial());

  final _getUnBilledCreditCardUseCase = getIt<GetUnBilledCreditCardUseCase>();

  Future<void> findAllUnBilled(String cardNumber) async {
    emit(const CreditUnbilledState.loading());
    final result = await _getUnBilledCreditCardUseCase.call(cardNumber);
    result.fold(
    (l) {
    emit(CreditUnbilledState.error(l.toString()));
    return;
    }, (r) {
    emit(CreditUnbilledState.loaded(r));
    });

  }
}
