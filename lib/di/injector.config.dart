// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_bloc_clean/data/data_source/remote/api/api_service.dart'
    as _i5;
import 'package:flutter_bloc_clean/data/data_source/remote/network/network_interceptor.dart'
    as _i4;
import 'package:flutter_bloc_clean/data/repositories/krungsri_implementation.dart'
    as _i7;
import 'package:flutter_bloc_clean/di/base_url_injection.dart' as _i12;
import 'package:flutter_bloc_clean/di/register_module.dart' as _i11;
import 'package:flutter_bloc_clean/domain/repository/krung_sri_repository.dart'
    as _i6;
import 'package:flutter_bloc_clean/domain/usecase/credit_card/get_billed_credit_card_usecase.dart'
    as _i8;
import 'package:flutter_bloc_clean/domain/usecase/credit_card/get_credit_card_list_usecase.dart'
    as _i9;
import 'package:flutter_bloc_clean/domain/usecase/credit_card/get_unbilled_credit_card_usecase.dart'
    as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    final baseURLInjection = _$BaseURLInjection();
    gh.factory<_i3.Dio>(() => registerModule.dio);
    gh.factory<_i4.NetworkInterceptor>(() => _i4.NetworkInterceptor());
    gh.factory<String>(
      () => baseURLInjection.urlDev,
      instanceName: 'baseURL',
    );
    gh.factory<_i5.ApiService>(() => _i5.ApiService(
          gh<_i3.Dio>(),
          gh<_i4.NetworkInterceptor>(),
          gh<String>(instanceName: 'baseURL'),
        ));
    gh.factory<_i6.KrungSriRepository>(
        () => _i7.KrungsriImplementation(gh<_i5.ApiService>()));
    gh.factory<_i8.GetBilledCreditCardUseCase>(
        () => _i8.GetBilledCreditCardUseCase(gh<_i6.KrungSriRepository>()));
    gh.factory<_i9.GetCreditCardListUseCase>(
        () => _i9.GetCreditCardListUseCase(gh<_i6.KrungSriRepository>()));
    gh.factory<_i10.GetUnBilledCreditCardUseCase>(
        () => _i10.GetUnBilledCreditCardUseCase(gh<_i6.KrungSriRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i11.RegisterModule {}

class _$BaseURLInjection extends _i12.BaseURLInjection {}
