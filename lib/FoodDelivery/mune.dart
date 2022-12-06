import 'package:flutter/material.dart';

class Mune extends StatefulWidget {
  final String image1;
  final String restorant;
  final String ball;
  final String food;
  Mune({Key? key, required this.image1, required this.restorant, required this.ball, required this.food}) : super(key: key);

  @override
  State<Mune> createState() => _MuneState();
}

class _MuneState extends State<Mune> {
  int ummumiy=0;
  int ummumiysmall=0;
  int sonismall=0;
  int ummumiymedium=0;
  int sonimedium=0;
  int ummumiylarge=0;
  int sonilarge=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 5),
              width: double.infinity,
              height: 250,
              child: Image.network('${widget.image1}',fit: BoxFit.cover,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.star,color: Colors.yellow,size: 20,),
                  Text("${widget.ball}",style: TextStyle(fontSize: 20),),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                      child: Text("${widget.food}",style: TextStyle(fontSize: 15),)),
                  Spacer(),
                  Container(
                    width: 75,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(7)
                    ),
                    child: Center(
                      child: Text(
                        'Share'
                      ),
                    ),
                  )
                ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text('Sizes',style: TextStyle(color: Colors.black,fontSize: 32),),
                  Spacer(),
                  Text('Price',style: TextStyle(color: Colors.black,fontSize: 32),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                color: Colors.black38,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text('Small',style: TextStyle(fontSize: 20),),
                  Spacer(),
                  Container(margin:EdgeInsets.only(right: 10),child: Text("\$$ummumiysmall")),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: IconButton(onPressed: (){
                        ummumiysmall+=15;
                        sonismall+=1;
                        setState(() {});
                      }, icon: Icon(Icons.add)),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(child: Text('$sonismall')),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: IconButton(onPressed: (){
                        ummumiysmall-=15;
                        sonismall-=1;
                        setState(() {});
                      }, icon: Icon(Icons.exposure_minus_1)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text("Add to Cart"),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                color: Colors.black38,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text('Medium',style: TextStyle(fontSize: 20),),
                  Spacer(),
                  Container(margin:EdgeInsets.only(right: 10),child: Text("\$$ummumiymedium")),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: IconButton(onPressed: (){
                        ummumiymedium+=20;
                        sonimedium+=1;
                        setState(() {});
                      }, icon: Icon(Icons.add)),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black38),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(child: Text('$sonimedium')),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: IconButton(onPressed: (){
                        ummumiymedium-=15;
                        sonimedium-=1;
                        setState(() {});
                      }, icon: Icon(Icons.exposure_minus_1)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text("Add to Cart"),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                color: Colors.black38,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text('Large',style: TextStyle(fontSize: 20),),
                  Spacer(),
                  Container(margin:EdgeInsets.only(right: 10),child: Text("\$$ummumiylarge")),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: IconButton(onPressed: (){
                        ummumiylarge+=25;
                        sonilarge+=1;
                        setState(() {});
                      }, icon: Icon(Icons.add)),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black38),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(child: Text('$sonilarge')),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: IconButton(onPressed: (){
                        ummumiylarge-=25;
                        sonilarge-=1;
                        setState(() {});
                      }, icon: Icon(Icons.exposure_minus_1)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text("Add to Cart"),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: IconButton(onPressed: (){
                        ummumiy+=1;
                        setState(() {});
                      }, icon: Icon(Icons.add)),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black38),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(child: Text('$ummumiy')),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: IconButton(onPressed: (){
                        ummumiy-=1;
                        setState(() {});
                      }, icon: Icon(Icons.exposure_minus_1)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text("Add to Cart"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(8),
            child: Text("My Reviews",style: TextStyle(color: Colors.black,fontSize: 30),),),
            Padding(padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.star,color: Colors.orange,),
                  Icon(Icons.star,color: Colors.orange,),
                  Icon(Icons.star,color: Colors.orange,),
                  Icon(Icons.star,color: Colors.orange,),
                  Icon(Icons.star,color: Colors.black12,),
                ],
              )
            ),
            Padding(padding: EdgeInsets.all(8),
              child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed eirmod tempor invidunt ut labore et.",style: TextStyle(color: Colors.black,fontSize: 19),),
            ),
            Padding(padding: EdgeInsets.all(8),
              child: Text("Randy Blouin",style: TextStyle(color: Colors.black12,fontSize: 19),),
            ),
            Padding(padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.star,color: Colors.orange,),
                    Icon(Icons.star,color: Colors.orange,),
                    Icon(Icons.star,color: Colors.orange,),
                    Icon(Icons.star,color: Colors.orange,),
                    Icon(Icons.star,color: Colors.orange,),
                  ],
                )
            ),
            Padding(padding: EdgeInsets.all(8),
              child: Text("Lorem ipsum dolor sit amet,"
                  " consetetur sadipscing elitr, sed eirmod"
                  " tempor invidunt ut labore et.",style: TextStyle(color: Colors.black,fontSize: 19),),
            ),
            Padding(padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.star,color: Colors.orange,),
                    Icon(Icons.star,color: Colors.orange,),
                    Icon(Icons.star,color: Colors.orange,),
                    Icon(Icons.star,color: Colors.black12,),
                    Icon(Icons.star,color: Colors.black12,),
                  ],
                )
            ),
            Padding(padding: EdgeInsets.all(8),
              child: Text("Michael Combs",style: TextStyle(color: Colors.black12,fontSize: 19),),
            ),
            Padding(padding: EdgeInsets.all(8),
              child: Text("Lorem ipsum dolor sit amet, "
                  "consetetur sadipscing elitr, sed eirmod"
                  " tempor invidunt ut labore et.",style: TextStyle(color: Colors.black,fontSize: 19),),
            ),
          ],
        ),
      ),
    );
  }
}
