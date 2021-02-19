import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roomfinder/core/controllers/auth_controller.dart';

class LoginView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: Get.height,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: Get.height * .3),
                      Image.asset(
                        'assets/images/logo.jpg',
                        width: Get.width * 0.5,
                        height: Get.height * 0.2,
                      ),
                      SizedBox(height: Get.height * .05),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Welcome to",
                            style: TextStyle(
                              fontSize: 17,
                              height: 2,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 34,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2,
                                height: 1,
                              ),
                              children: [
                                TextSpan(
                                  text: 'ROOM',
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextSpan(
                                  text: 'FINDER',
                                  style: TextStyle(color: Color(0xFF318EC4)),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "Please sign in to continue",
                            style: TextStyle(
                              fontSize: 16,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Container(
                        margin: const EdgeInsets.only(
                          bottom: 60.0,
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: FlatButton(
                            onPressed: () {
                              controller.googleSignInMethod();
                            },
                            highlightColor: Colors.white,
                            child: Container(
                              width: Get.width * 0.8,
                              padding: EdgeInsets.symmetric(vertical: 15),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(1, 1),
                                    blurRadius: 1,
                                    spreadRadius: 1,
                                  )
                                ],
                                color: Colors.white,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/google_logo.png",
                                    height: 20.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(
                                      'Sign In with Google',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xFF318EC4)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Get.height * .01),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
