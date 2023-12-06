import 'package:dio/dio.dart';
import 'package:flutter_bloc_clean/data/data_source/remote/network/network_interceptor.dart';
import 'package:flutter_bloc_clean/data/model/card/card_billed/credit_card_billed.dart';
import 'package:flutter_bloc_clean/data/model/card/card_list/card_list.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@Injectable()
@RestApi()
abstract class ApiService {

  @factoryMethod
  factory ApiService(
      Dio dio,
      NetworkInterceptor interceptor,
      @Named("baseURL") String baseUrl
  ) {
    dio.interceptors.addAll([
      interceptor
    ]);

    return _ApiService(dio, baseUrl: baseUrl);
  }
  
  @GET("/v1/cards/{citizenId}")
  Future<CreditCardList> getCreditCard(
      @Path("citizenId") String id
  );

  @GET("/v1/unbilled-statements")
  Future<List<CreditCardBilled>> getUnBillCreditCardByCardNumber(
      @Query("cardNumber") String cardNumber
  );

  @GET("/v1/billed-statements")
  Future<List<CreditCardBilled>> getBillCreditCardByCardNumber(
      @Query("cardNumber") String cardNumber,
      @Query("asOf") String asOf
  );
}