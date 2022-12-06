import 'package:flutter/material.dart';
import 'package:yangiimtihon/FoodDelivery/TwoPage.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return TwoPage();
            },
          ));
        },
        child: Stack(
          children: [
           Image.asset('assets/image1.png'),
            Align(
              alignment: Alignment.bottomLeft,
                child: Image.asset('assets/imagebottomleft.png')),
            Positioned(top:47,child: Image.asset('assets/imagecenterone.png')),
            Align(
              alignment: Alignment.center,
              child: Image.asset('assets/imagecenter.png'),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset('assets/imagebottomrighttwo.png'),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset('assets/imagebottomrightone.png'),
            ),
          ],
        ),
      ),
    );
  }
}
