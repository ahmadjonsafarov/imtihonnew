import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  int a=-1;
  bool IsName=false;
  bool IsPassword=false;
  bool Isemail=false;
  TextEditingController userName=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController email=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:Stack(
        children: [
          Image.asset('assets/a1.png',fit: BoxFit.fitWidth),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/a3.png',fit: BoxFit.fitWidth,),
            ),
          ),
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
                        color: Color(0xffFFC901),
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
                      child: Icon(Icons.arrow_back,color: Colors.white,),
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
                    color: Color(0xffFFFFFF),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 35),
                    child: RichText(text: TextSpan(
                        text: "REGISTER",style: TextStyle(color: Color(0xffFFFFFF),fontSize: 38,fontWeight: FontWeight.w300)
                    )),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 21),
                child: Container(
                  width: double.infinity,
                  height: 400,
                  color: Colors.white,
                  child: Padding(
                    padding:  EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          onChanged: (s){
                            a=0;
                            IsName=false;
                            setState(() {

                            });
                          },
                          controller: userName,
                          cursorColor: Color(0xffF6F6F6),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffF6F6F6),
                            labelText: "Frist Name",
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
                        IsName?Text('Frist Name not entered',style: TextStyle(color: Colors.red),):SizedBox.shrink(),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (s){
                              a=1;
                              Isemail=false;
                              setState(() {

                              });
                            },
                            controller: email,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffF6F6F6),
                              labelText: "Email",
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
                        Isemail?Container(margin:EdgeInsets.only(bottom: 15),child: Text('email not entered ',style: TextStyle(color: Colors.red),)):SizedBox(height: 10,),
                        TextFormField(
                          onChanged: (s){
                            a=2;
                            IsPassword=false;
                            setState(() {

                            });
                          },
                          controller: password,
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
                        IsPassword?Container(margin:EdgeInsets.only(bottom: 15),child: Text('password not entered ',style: TextStyle(color: Colors.red),)):SizedBox(height: 35,),
                        Row(
                          children: [
                            Spacer(),
                            a==0?Icon(Icons.circle,color: Color(0xffF2A902),):Icon(Icons.circle_outlined,color: Color(0xffF2A902),),
                            a==1?Icon(Icons.circle,color: Color(0xffF2A902),):Icon(Icons.circle_outlined,color: Color(0xffF2A902),),
                            a==2?Icon(Icons.circle,color: Color(0xffF2A902),):Icon(Icons.circle_outlined,color: Color(0xffF2A902),),
                            Spacer()
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: ElevatedButton(
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)),
                              onPressed: (){

                                if(userName.text.isNotEmpty && password.text.isNotEmpty && email.text.isNotEmpty){
                                  showDialog(context: context, builder: (context){
                                    return AlertDialog(
                                      title: Center(child: Text("Tabriklaymiz siz ro'yxatdan o'tdingiz")),
                                    );
                                  });
                                }else if(userName.text.isNotEmpty && password.text.isEmpty && email.text.isNotEmpty){
                                  IsName=true;
                                  IsPassword=false;
                                  Isemail=false;
                                  setState(() { });
                                }else if(userName.text.isEmpty && password.text.isNotEmpty && email.text.isNotEmpty){
                                  IsName=false;
                                  IsPassword=true;
                                  Isemail=false;
                                  setState(() { });
                                }else if(userName.text.isNotEmpty && password.text.isNotEmpty && email.text.isEmpty){
                                  IsName=false;
                                  IsPassword=false;
                                  Isemail=true;
                                  setState(() { });
                                }
                                else if(userName.text.isEmpty && password.text.isEmpty && email.text.isNotEmpty){
                                  IsName=true;
                                  IsPassword=true;
                                  Isemail=false;
                                  setState(() { });
                                }else if(userName.text.isEmpty && password.text.isNotEmpty && email.text.isEmpty){
                                  IsName=true;
                                  IsPassword=false;
                                  Isemail=true;
                                  setState(() { });
                                }
                                else if(userName.text.isNotEmpty && password.text.isEmpty && email.text.isEmpty){
                                  IsName=false;
                                  IsPassword=true;
                                  Isemail=true;
                                  setState(() { });
                                }
                                else{
                                  IsName=true;
                                  IsPassword=true;
                                  Isemail=true;
                                  setState(() {});
                                }

                              },
                              child: Row(
                            children: [
                              Spacer(),
                              Center(child: Text('Next')),
                              Spacer(),
                              Icon(Icons.arrow_forward),
                            ],
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 75,
            bottom: 15,
            child: Align(alignment: Alignment.bottomCenter,
            child: TextButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text("Already Have An Account? Log In",style: TextStyle(color: Colors.white),),),),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width/3,
            bottom: 150,
            child: Text("Terms & Conditions"),)
        ],
      ),
    );
  }
}