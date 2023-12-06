import 'package:injectable/injectable.dart';

@module
abstract class BaseURLInjection {
  @Named('baseURL')
  String get urlDev => 'https://card-management-eajwtocuqa-as.a.run.app/';
}