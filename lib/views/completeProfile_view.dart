import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roomfinder/core/controllers/auth_controller.dart';

class CompleteProfileView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CompleteProfileView'),
      ),
      body: Container(),
    );
  }
}
