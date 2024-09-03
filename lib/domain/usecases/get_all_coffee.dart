

import 'package:flutter_clean_archictecture_template/data/models/coffee_model.dart';
import 'package:flutter_clean_archictecture_template/domain/repositories/coffee_reposity.dart';

class GetAllCoffee {
  final CoffeeRepository repository;

  GetAllCoffee(this.repository);

  Future<List<CoffeeModel>> execute() async {
    return await repository.getAllCoffee();
  }
}
