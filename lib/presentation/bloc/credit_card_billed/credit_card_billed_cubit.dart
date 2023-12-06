import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_clean/common/enum.dart';
import 'package:flutter_bloc_clean/di/injector.dart';
import 'package:flutter_bloc_clean/domain/entity/card/card_billed/card_billed_entity.dart';
import 'package:flutter_bloc_clean/domain/usecase/credit_card/get_billed_credit_card_usecase.dart';
import 'package:flutter_bloc_clean/model/schema/billed/get_billed_by_card_number_schema.dart';
import 'package:flutter_bloc_clean/utils/date_format.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'credit_card_billed_state.dart';
part 'credit_card_billed_cubit.freezed.dart';

class CreditCardBilledCubit extends Cubit<CreditCardBilledState> {
  CreditCardBilledCubit() : super(const CreditCardBilledState());

  final _getBilledCreditCardUseCase = getIt<GetBilledCreditCardUseCase>();

  Future<void> findAllBilledByDate(String cardNumber) async {
    emit(state.copyWith(loadApiStatus: LoadApiStatus.loading));
    final currentDate = DateTime.now();
    final asOf = DateFormatExtension.dateTimeToString(date: currentDate, format: DateFormatExtension.MMyyyy);
    final request = GetBilledByCardNumberSchema(
        cardNumber: cardNumber,
        asOf: asOf
    );
    final result = await _getBilledCreditCardUseCase.call(request);
    result.fold(
            (l) {
          emit(
            state.copyWith(
              loadApiStatus: LoadApiStatus.error,
              errorMessage: l.toString()
            ),
          );
          return;
        }, (r) {
      emit(state.copyWith(
        loadApiStatus: LoadApiStatus.success,
        billedStatement: r,
        selectedDate: DateTime.now()
      ));
    });
  }

  Future<void> refreshNewBilled(String cardNumber, DateTime selectedDate) async {
    emit(state.copyWith(loadApiStatus: LoadApiStatus.loading));
    emit(state.copyWith(selectedDate: selectedDate));
    final request = GetBilledByCardNumberSchema(
        cardNumber: cardNumber,
        asOf: DateFormatExtension.dateTimeToString(date: selectedDate, format: DateFormatExtension.MMyyyy)
    );
    final result = await _getBilledCreditCardUseCase.call(request);
    result.fold(
            (l) {
          emit(
            state.copyWith(
                loadApiStatus: LoadApiStatus.error,
                errorMessage: l.toString()
            ),
          );
          return;
        }, (r) {
      emit(state.copyWith(
          loadApiStatus: LoadApiStatus.success,
          billedStatement: r
      ));
    });
  }
}
