import 'package:car_rent_app/domain/repositories/car_repositories.dart';

import '../../data/models/car.dart';

class GetCars {
  final CarRepository repository;

  GetCars(this.repository);

  Future<List<Car>> call() async {
    return await repository.fetchCars();
}
}