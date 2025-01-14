import 'package:car_rent_app/presentaion/widgets/car_card.dart';
import 'package:car_rent_app/presentaion/widgets/more_card.dart';
import 'package:flutter/material.dart';

import '../data/models/car.dart';

class CarDetailsPage extends StatelessWidget {
  final Car car;

  const CarDetailsPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.info_outline), Text("Information")],
        ),
      ),
      body: SingleChildScrollView( // Added by me
        child: Column(
          children: [
            CarCard(
              car: Car(
                  model: 'Fortuner GR',
                  distance: 870,
                  fuelCapacity: 50,
                  pricePerHour: 45),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: const Color(0xffF3F3F3),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10,
                                spreadRadius: 5)
                          ]),
                      child: const Column(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("assets/user.png"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Jane Cooper",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "PKR 4,253",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      height: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage("assets/maps.png"),
                              fit: BoxFit.cover),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10,
                                spreadRadius: 5)
                          ]),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  MoreCard(
                    car: Car(
                        model: 'Fortuner GR',
                        distance: 870,
                        fuelCapacity: 50,
                        pricePerHour: 45),
                  ),
                  SizedBox(height: 5,),
                  MoreCard(
                    car: Car(
                        model: 'Fortuner GR',
                        distance: 870,
                        fuelCapacity: 50,
                        pricePerHour: 45),
                  ),
                  SizedBox(height: 5,),
                  MoreCard(
                    car: Car(
                        model: 'Fortuner GR',
                        distance: 870,
                        fuelCapacity: 50,
                        pricePerHour: 45),
                  ),
                  SizedBox(height: 5,),
                  MoreCard(
                    car: Car(
                        model: 'Fortuner GR',
                        distance: 870,
                        fuelCapacity: 50,
                        pricePerHour: 45),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
