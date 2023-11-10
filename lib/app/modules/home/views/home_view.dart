import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 87, 3, 3),
        title: const Text('CARS'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text('Status: ${controller.status.value.name}')),
              Obx(() => ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.cars.length,
                  itemBuilder: (context, index) {
                    var curCar = controller.cars[index];
                    return GestureDetector(
                      onTap: () => Get.toNamed('car', arguments: curCar),
                      child: Card(
                        color: Color.fromARGB(255, 230, 188, 188),
                        elevation: 1,
                        child: ListTile(
                          leading: Text(curCar.id.toString()),
                          title: Text("${curCar.brand} ${curCar.model}"),
                          subtitle: Text("${curCar.price} \$"),
                        ),
                      ),
                    );
                  }))
            ],
          ),
        ),
      ),
    );
  }
}
