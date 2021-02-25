import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roomfinder/core/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HomeView',
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Text("hello"),
      ),
    );
  }
}
