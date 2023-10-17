import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 179, 98, 6),
          title: const Text('HomeView'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Get.toNamed('/productsetting');
              },
            ),
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/course2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Get.toNamed('/yoga');
                },
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/yoga.png'),
                      const Text('Yoga'),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/yoga');
                },
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/gym.png'),
                      const Text('Gym'),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/gym');
                },
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/music.png'),
                      const Text('Music'),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/music');
                },
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/hiking.jpg'),
                      const Text('Hiking'),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/yoga');
                },
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/sport.jpg'),
                      const Text('Sport'),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/yoga');
                },
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/reading.jpg'),
                      const Text('Reading'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
