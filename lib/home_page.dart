import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

  class _HomePageState extends State<HomePage> {
  @override
  Widget build (BuildContext context) {
  return Scaffold(
  body: Container(
    width: double.infinity,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        colors: [
          Colors.green.shade900,
          Colors.green.shade500,
          Colors.green.shade200,
        ]
      ),
  ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 80,),
        // #login, #welcome
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Login",style: TextStyle(color: Colors.white,fontSize: 40),),
              SizedBox(height: 10,),
              Text("Welcome Back", style: TextStyle(color: Colors.white,fontSize: 20),),
            ],
          ),

        ),
        SizedBox(height: 20,),

        Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60)),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      SizedBox(height: 60,),
                      //#email, #password
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: Color.fromARGB(171, 171, 171, 1), blurRadius: 20, offset: Offset(0,10)),
                          ]
                        ),
                        child: Column(
                          children: [

                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none
                                ),
                              ),
                            ),
                            // email
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.green.shade200)),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                ),
                              ),
                            )
                            //password

                                                      ],
                        ),
                      )

                    ],
                  ),
                ),
              ),

            ))
      ],
    ),
  ),

  );
  }
  }
