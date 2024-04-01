
import 'environment.dart';

class EnvDev implements Environment {
  static const String name = 'DEV';
  @override
  String get basePath => 'https://api.kodeco.com/api/';
  @override
  bool get production => false;

}