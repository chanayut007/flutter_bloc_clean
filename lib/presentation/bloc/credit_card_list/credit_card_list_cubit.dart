import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_clean/common/enum.dart';
import 'package:flutter_bloc_clean/di/injector.dart';
import 'package:flutter_bloc_clean/domain/entity/card/card_list/card_list_entity.dart';
import 'package:flutter_bloc_clean/domain/usecase/credit_card/get_credit_card_list_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'credit_card_list_state.dart';
part 'credit_card_list_cubit.freezed.dart';

class CreditCardListCubit extends Cubit<CreditCardListState> {
  CreditCardListCubit() : super(const CreditCardListState());
  
  final _getCreditCardListUseCase = getIt<GetCreditCardListUseCase>();
  
  void getCreditCard(String citizenId) async {
    emit(state.copyWith(loadApiStatus: LoadApiStatus.loading));
    final result = await _getCreditCardListUseCase.call(citizenId);
    result.fold(
      (l) {
        emit(state.copyWith(
            loadApiStatus: LoadApiStatus.error,
            errorMessage: l.toString()
        ));
      }, (r) async {
        emit(state.copyWith(
            loadApiStatus: LoadApiStatus.success,
            creditCards: r.cards
        ));
    });
  }

  void refreshCreditCard(String citizenId) async {
    emit(state.copyWith(loadApiStatus: LoadApiStatus.refresh));
    final result = await _getCreditCardListUseCase.call(citizenId);
    result.fold(
            (l) {
          emit(state.copyWith(
              loadApiStatus: LoadApiStatus.error,
              errorMessage: l.toString()
          ));
        }, (r) async {
              if (state.currentIndex > r.cards.length - 1) {
                updateCurrentIndex(r.cards.length - 1);
              }
      emit(state.copyWith(
          loadApiStatus: LoadApiStatus.success,
          creditCards: r.cards
      ));
    });
  }

  void updateCurrentIndex(int index) {
    emit(state.copyWith(currentIndex: index));
  }
}
