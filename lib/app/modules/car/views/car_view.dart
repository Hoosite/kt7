import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/car_controller.dart';

class CarView extends GetView<CarController> {
  const CarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${controller.car.brand} ${controller.car.model}'),
        backgroundColor: const Color.fromARGB(255, 87, 3, 3),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'BRAND: ${controller.car.brand}',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'MODEL: ${controller.car.model}',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'PRICE: ${controller.car.price} \$',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'COLOR: ${controller.car.color}',
            style: TextStyle(fontSize: 20),
          ),
        ],
      )),
    );
  }
}
