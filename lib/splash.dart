import 'dart:async';

import 'package:flutter/material.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Timer? _countTimer;
  int _countDown=3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/splash.jpg",
            fit: BoxFit.fill,
          ),
          Positioned(// 定位组件，将倒计时定位到右上角
            child: Container(
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "$_countDown",
                    style: const TextStyle(color: Colors.black),
                  ),
                ]),
              ),
              //装饰器
              decoration: BoxDecoration(
                color: Colors.grey[350],
                border: Border.all(width: 1),
                borderRadius: const BorderRadius.all(
                  Radius.circular(45),
                ),
              ),
              padding: const EdgeInsets.all(15),
            ),
            top: 30,
            right: 30,
          )
        ],
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startCountDown();
  }
  void startCountDown(){
    _countTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if(_countDown<1){
          Navigator.pushNamedAndRemoveUntil(context, "/main",(route) => false);
          _countTimer!.cancel();
          _countTimer = null;
        }else{
          _countDown-=1;
        }
      });
    });
  }
}
