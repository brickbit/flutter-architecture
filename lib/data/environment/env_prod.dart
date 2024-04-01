
import 'environment.dart';

class EnvProd implements Environment {
  static const String name = 'PRO';
  @override
  String get basePath => 'https://api.kodeco.com/api/';
  @override
  bool get production => true;

}