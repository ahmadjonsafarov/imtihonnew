import 'package:flutter/material.dart';
import 'package:yangiimtihon/FoodDelivery/FeaturedModel.dart';
import 'package:yangiimtihon/FoodDelivery/MOdel.dart';
import 'package:yangiimtihon/FoodDelivery/mune.dart';
import 'package:yangiimtihon/FoodDelivery/person.dart';

class CurrentLocation extends StatefulWidget {
  const CurrentLocation({Key? key}) : super(key: key);

  @override
  State<CurrentLocation> createState() => _CurrentLocationState();
}

class _CurrentLocationState extends State<CurrentLocation> {
  List<FeaturedModel> model2=[
    FeaturedModel(like: false, image: 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/5/6/1c7bd8e0-bf3c-458a-a1cd-8917f69cd6ac.jpg', Restorant: 'Chinese In Restaurant', food: 'Restaurant Chinese Food | \$\$', ball: '4.9', sharh: '(Based on 96 reviews)'),
    FeaturedModel(like: false, image: 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/5/6/1c7bd8e0-bf3c-458a-a1cd-8917f69cd6ac.jpg', Restorant: 'Chinese In Restaurant', food: 'Restaurant Chinese Food | \$\$', ball: '4.1', sharh: '(Based on 10 reviews)'),
    FeaturedModel(like: false, image: 'https://www.foodandwine.com/thmb/GnuZMkTZjoUh8fgA1IoIrJRDB_U=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/goat-milk-and-corn-panna-cotta-with-blackberries-XL-RECIPE0817-6c763bb0ced04f40a20b186730901887.jpg', Restorant: 'Chinese In Restaurant', food: 'Restaurant Chinese Food | \$\$', ball: '5', sharh: '(Based on 80 reviews)'),
    FeaturedModel(like: false, image: 'https://www.summahealth.org/-/media/project/summahealth/website/page-content/flourish/2_18a_fl_fastfood_400x400.webp?h=400&w=400&la=en&hash=92457243FC679B70A8F1BEC34E50CC6F470AE008', Restorant: 'Chinese In Restaurant', food: 'Restaurant Chinese Food | \$\$', ball: '4.5', sharh: '(Based on 70 reviews)'),

  ];
  List<Model> Model1=[
    Model(text: 'Flat 50% Off', image: 'https://media-cdn.tripadvisor.com/media/photo-s/14/64/8d/24/disert.jpg', Restoran: 'Pizzeria Restaurant', food: 'Chinese Food Specialists', ball: '4.5', like: false),
    Model(text: 'Up to 70% Off', image: 'https://thumbs.dreamstime.com/b/chocolate-cocoa-sweets-everyone-very-tasty-chocolate-cocoa-balls-disert-bite-239719808.jpg', Restoran: 'Disert Restaurant', food: 'Disert Food Specialists', ball: '2.5', like: false),
    Model(text: 'Up to 40% Off', image: 'https://media-cdn.tripadvisor.com/media/photo-s/10/8d/ed/77/unique-disert.jpg', Restoran: 'Pizzeria Restaurant', food: 'Picture Food Specialists', ball: '5', like: false),
  ];
  List food=[
    "Chizburger",
    "HOT DOG",
    "FRI",
    "Lavash"
  ];
  List Restaurant=[
    "12 Restaurants",
    "10 Restaurants",
    "5 Restaurants",
    "7 Restaurants"
  ];
  List fastfood=[
    "https://media.istockphoto.com/id/1209205618/vector/fast-food-lunch-meal-set-classic-cheese-burger-french-fries-pack-fried-crispy-chicken-leg.jpg?s=612x612&w=0&k=20&c=8e12luiZFHNoLHj2fDp0HBxfijjaIgDBi02ecDcTfRA=",
    "https://www.eatthis.com/wp-content/uploads/sites/4/2022/06/fast-food-assortment-soda.jpg?quality=82&strip=1",
    "https://cdn2.howtostartanllc.com/images/business-ideas/business-idea-images/fast-food.jpg",
    "https://avatars.mds.yandex.net/get-altay/6264381/2a00000182009cbde06cf8cb60e15a783492/L"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 30,bottom: 10),
                child: Row(
                  children: [
                    Image.asset('assets/menu_Button.png'),
                    Container(
                      margin: EdgeInsets.only(left: 13,right: 9),
                      child: Text("Current Location",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xff110A00)),),
                    ),
                    Icon(Icons.keyboard_arrow_down_sharp),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Color(0xffF6F6F6),
                    filled: true,
                    hintText: "Searching here|",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black38)),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black38)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black38)),
                  ),
                ),
              ),
              SizedBox(
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: fastfood.length,
                      itemBuilder: (context,index){
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      width: MediaQuery.of(context).size.width-60,
                      height: 250,
                      child: Stack(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width-60,
                              height: 250,
                              child: Image.network(fastfood[index],fit: BoxFit.fitWidth,)),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: MediaQuery.of(context).size.width-60,
                              height: 50,
                              color: Colors.black38,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Text(food[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300,color: Colors.white),),
                                        Text(Restaurant[index],style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300,color: Colors.white),),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  for(int a=0;a<fastfood.length;a++)
                                      Padding(
                                      padding: const EdgeInsets.only(right: 5),
                                      child: Icon(Icons.circle,color: Colors.orange,size: 15,),
                                    ),

                                ]
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 20),
                child: Wrap(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Burgers",style: TextStyle(color: Colors.white,fontSize: 13),),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Pizzas",style: TextStyle(color: Colors.white,fontSize: 13),),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Chinese",style: TextStyle(color: Colors.white,fontSize: 13),),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Ice Cream",style: TextStyle(color: Colors.white,fontSize: 13),),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Sodas",style: TextStyle(color: Colors.white,fontSize: 13),),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text('Promotions'),
                    Spacer(),
                    Text('View All >')
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Model1.length,
                      itemBuilder: (context,index){
                    return InkWell(
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 200,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Column(
                          children: [
                            Text(Model1[index].text,style: TextStyle(fontSize: 15),),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return Mune(image1: Model1[index].image, restorant: Model1[index].Restoran, ball: Model1[index].ball, food: Model1[index].food);
                                }),);
                              },
                              child: Container(
                                width: 170,
                                  height: 120,
                                  child: Image.network(Model1[index].image,fit: BoxFit.cover,)),
                            ),
                            Container(
                              width: double.infinity,
                              height: 62,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(Model1[index].Restoran,style: TextStyle(color: Colors.black),),
                                    Text(Model1[index].food,style: TextStyle(color: Colors.black38,fontSize: 10),),
                                    Container(
                                      margin: EdgeInsets.only(top: 3),
                                      child: Row(
                                        children: [
                                         Icon(Icons.star,color: Colors.yellow,),
                                          Text(Model1[index].ball),
                                          Container(margin:EdgeInsets.only(left: 5),child: Text('(Based on 10 reviews)',style: TextStyle(color: Colors.black38,fontSize: 7),)),
                                          Container(
                                            margin: EdgeInsets.only(left: 5),
                                            height: 20,
                                              width: 20,
                                              decoration: BoxDecoration(
                                                color: Colors.yellow,
                                                shape: BoxShape.circle
                                              ),
                                              child: Center(
                                                child: InkWell(
                                                  onTap: (){
                                                    Model1[index].like = !Model1[index].like;
                                                    setState(() {});
                                                  },
                                                    child: Model1[index].like? Icon(Icons.favorite,color: Colors.red,size: 15,): Icon(Icons.favorite,color: Colors.white,size: 15,),
                                                ),

                                              ),
                                              ),

                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Row(
                  children: [
                    Text('Featured',style: TextStyle(fontSize: 20),),
                    Spacer(),
                    Text('View All >',style: TextStyle(fontSize: 16),)
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                  itemCount: 4,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.only(top: 5),
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black38)
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                            child: Image.network(model2[index].image,fit: BoxFit.fitHeight,),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return Mune(image1: model2[index].image, restorant: model2[index].Restorant, ball: model2[index].ball, food: model2[index].food,
                            );
                          }),);
                        },),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5,top: 5),
                              child: Text(model2[index].Restorant,style: TextStyle(color: Colors.black,fontSize: 18),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5,bottom: 5),
                              child: Text(model2[index].food,style: TextStyle(color: Colors.black38),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10,bottom: 5),
                              child: Row(
                                children: [
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Text(model2[index].ball),
                                  Text(model2[index].sharh,style: TextStyle(color: Colors.black38),),
                                ],
                              ),
                            )
                          ],
                        ),
                        InkWell(
                          onTap: (){
                            model2[index].like=!model2[index].like;
                            setState(() {
                            });
                          },
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              shape: BoxShape.circle
                            ),
                            margin: EdgeInsets.only(left: 35,top: 10),
                              child: Center(child: model2[index].like?Icon(Icons.favorite,color: Colors.red,size: 17,):Icon(Icons.favorite,color: Colors.white,size: 17,))),
                        ),
                      ],
                    ),
                  ),
                );
              })
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.wifi),label: "Sotib olish"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "person"),
        ],
      ),
    );
  }
}

