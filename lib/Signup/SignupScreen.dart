import 'package:flutter/material.dart';
import 'package:flutter_app/Signup/LoginLink.dart';
import 'package:flutter_app/Signup/TextFieldContainer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';


class SignupScreen extends StatelessWidget {

  String fullName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Image.asset(
              "assets/images/background.png",
              width: size.width,
            ),
            Column(
              children: <Widget>[
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  centerTitle: true,
                  leading: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white,),
                      iconSize: 25,
                      onPressed: null
                  ),
                  title: Text("INBOXX",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Bebasneue'
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.1),
                Text("Please enter your details".toUpperCase(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Bebasneue'
                  ),
                ),
                SizedBox(height: size.height * 0.1),
                Stack(
                  children: [
                    Container(
                        margin: EdgeInsets.only( left: 20, right: 20, bottom: 20),
                        padding: EdgeInsets.all(24),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0.0,2.0),
                                  blurRadius: 6.0
                              ),
                            ]
                        ),
                        child:  Column(
                          children: <Widget>[
                            TextFieldContainer(label: "Full name", hint: "Please enter your full name", onChanged: (text) { fullName = text;},),
                            TextFieldContainer(label: "Password", hint: "Please enter password", type: "password"),
                            TextFieldContainer(label: "Email address", hint: "Please enter email addres", type: "email"),
                            TextFieldContainer(label: "Phone number", hint: "Please enter phone number", type: "phone"),
                            SizedBox(height: 30),
                          ],
                        )
                    ),
                    Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 45),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            gradient: LinearGradient(
                              colors: [ HexColor("#5974ff"),  HexColor("#bb5d98")],
                            ),
                          ),
                          child: FlatButton(
                            height: 40,
                            onPressed: () {
                              if(fullName==null || fullName.isEmpty) {
                                Scaffold.of(context).showSnackBar(
                                    SnackBar(content: Text("Please enter full name"),));
                              }
                            },
                            child: Text(
                              "Sign Up & Get Started",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        )
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: LoginLink(login: false),
                )
              ],
            ),
          ],
        )
    );
  }
}
