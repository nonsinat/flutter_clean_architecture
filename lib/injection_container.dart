
import 'package:flutter_clean_archictecture_template/data/datasources/coffee_remote_data_source.dart';
import 'package:flutter_clean_archictecture_template/data/repositories/coffee_repository_impl.dart';
import 'package:flutter_clean_archictecture_template/domain/repositories/coffee_reposity.dart';
import 'package:flutter_clean_archictecture_template/domain/usecases/get_all_coffee.dart';
import 'package:flutter_clean_archictecture_template/presentation/blocs/coffee_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

void init() {
  
  // Blocs
  sl.registerFactory(() => CoffeeBloc(sl()));

  // Use cases
  sl.registerLazySingleton(() => GetAllCoffee(sl()));

  // Repositories
  sl.registerLazySingleton<CoffeeRepository>(() => CoffeeRepositoryImpl(sl()));

  // Data sources
  sl.registerLazySingleton(() => CoffeeRemoteDataSource(sl()));

  // External
  sl.registerLazySingleton(() => http.Client());
}
