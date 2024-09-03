
import 'package:flutter_clean_archictecture_template/data/models/coffee_model.dart';

abstract class CoffeeRepository {
  Future<List<CoffeeModel>> getAllCoffee();
}
