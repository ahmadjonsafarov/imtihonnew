import 'package:flutter/material.dart';
import 'package:yangiimtihon/FoodDelivery/CurrentLocation.dart';
import 'package:yangiimtihon/FoodDelivery/Register.dart';

class TwoPage extends StatefulWidget {
  const TwoPage({Key? key}) : super(key: key);

  @override
  State<TwoPage> createState() => _TwoPageState();
}

class _TwoPageState extends State<TwoPage> {
  bool isName=false;
  bool isPassword=false;
  TextEditingController UserName=TextEditingController();
  TextEditingController Password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffF6F6F6),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/Two.png',fit: BoxFit.fitWidth,),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/two2.png'),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width/2-65,
              bottom: 20,
                child: TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Register();
                  }),);
                }, child: Text("Create new account",style: TextStyle(color: Colors.black54),),)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding:  EdgeInsets.only(left: 21,top: 31,bottom: 36),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 0.2,
                            spreadRadius: 0.2,
                            color: Colors.black38,
                            offset: Offset(0,0)
                          )
                        ]
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.arrow_back,color: Color(0xffFFC901),),
                      ),
                    ),
                  ),

                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20,bottom: 45),
                      width: 27,
                      height: 50,
                      color: Color(0xffF2A902),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 35),
                      child: RichText(text: TextSpan(
                        text: "SIGN IN",style: TextStyle(color: Color(0xffF2A902),fontSize: 38,fontWeight: FontWeight.w300)
                      )),
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 21),
                  child: Container(
                    width: double.infinity,
                    height: 425,
                    color: Colors.white,
                    child: Padding(
                      padding:  EdgeInsets.only(left: 20,right: 20,top: 28,bottom: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            onChanged: (s){
                              isName=false;
                              setState(() {

                              });
                            },
                            controller: UserName,
                        cursorColor: Color(0xffF6F6F6),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffF6F6F6),
                              labelText: "User Name",
                              labelStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                  color: Color(0xffCBCBCB)
                              ),
                              border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffF6F6F6))),
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffF6F6F6))),
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffF6F6F6))),
                            ),
                          ),
                          isName?Text('User Name is wrong',style: TextStyle(color: Colors.red),):SizedBox.shrink(),
                          Container(
                            margin: EdgeInsets.only(top: 22),
                            child: TextFormField(
                              onChanged: (s){
                                isPassword=false;
                                setState(() {

                                });
                              },
                              controller: Password,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xffF6F6F6),
                                labelText: "Password",
                                labelStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xffCBCBCB)
                                ),
                                border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffF6F6F6))),
                                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffF6F6F6))),
                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffF6F6F6))),
                              ),
                            ),
                          ),
                          isPassword?Container(margin:EdgeInsets.only(bottom: 15),child: Text('password is wrong',style: TextStyle(color: Colors.red),)):SizedBox(height: 15,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 90,
                                width: 87,
                                child: Stack(
                                  children: [
                                    Image.asset('assets/yellow.png'),
                                    Positioned(
                                      top: 18,
                                        left: 21,
                                        child: Image.asset('assets/red.png'))
                                  ],
                                ),
                              ),
                              Spacer(),
                              Text('Forgot Password?',style: TextStyle(
                                color: Color(0xff110A00),fontSize: 14,fontWeight: FontWeight.w400
                              ),)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 35),
                            child: ElevatedButton(
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)),
                                onPressed: (){

                                  if(UserName.text.isNotEmpty && Password.text.isNotEmpty){
                                    Navigator.push(context, MaterialPageRoute(builder: (context){
                                      return CurrentLocation();
                                    }));
                                  }else if(UserName.text.isNotEmpty && Password.text.isEmpty){
                                    isName=true;
                                    isPassword=false;
                                    setState(() { });
                                  }else if(UserName.text.isEmpty && Password.text.isNotEmpty){
                                    isName=false;
                                    isPassword=true;
                                    setState(() { });
                                  }
                                  else{
                                    isName=true;
                                    isPassword=true;
                                    setState(() {});
                                  }

                                }, child: Row(
                              children: [
                                Spacer(),
                                Center(child: Text('Login')),
                                Spacer(),
                                Icon(Icons.arrow_forward),
                              ],
                            )),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 22,bottom: 10),
                  child: Center(child: Text("Or",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)),
                ),
                Row(
                  children: [
                    Spacer(),
                    Container(
                      width: 40,
                      height: 40,
                      color: Colors.white,
                      child: Center(
                        child: Image.asset('assets/facebook.png'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      width: 40,
                      height: 40,
                      color: Colors.white,
                      child: Center(
                        child: Image.asset('assets/twitter.png'),
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      color: Colors.white,
                      child: Center(
                        child: Image.asset('assets/Google.png'),
                      ),
                    ),
                    Spacer()
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}