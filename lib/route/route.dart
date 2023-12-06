import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc_clean/presentation/screen/credit_card/credit_card_list_screen.dart';
import 'package:flutter_bloc_clean/route/route_name.dart';

class R {
  static Map<String, WidgetBuilder> routes = {
    RouteName.creditCardList: (_) => const CreditCardListScreen()
  };
}