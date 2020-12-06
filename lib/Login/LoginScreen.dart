import 'package:flutter/material.dart';
import 'package:flutter_app/Login/LoginLink.dart';
import 'package:flutter_app/Login/TextFieldContainer.dart';
import 'package:flutter_svg/svg.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Center(
                child: SvgPicture.asset(
                  "assets/icons/login.svg",
                  width: size.width,
                  height: size.height * 0.4,
                ),
              ),
              Column(
                children: [
                  AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    centerTitle: true,
                    leading: IconButton(
                        icon: Icon(Icons.arrow_back),
                        iconSize: 30,
                        color: Colors.black,
                        onPressed: null
                    ),
                    title: Text("INBOXX",
                      style: TextStyle(
                        color: Colors.black,
                          fontSize: 20.0
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.1),
                  Text("Please enter your details".toUpperCase(),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(height: size.height * 0.1),
                  Container(
                    margin: EdgeInsets.symmetric( horizontal: 20),
                    padding: EdgeInsets.all(20),
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
                      children: [
                        TextFieldContainer(),
                        TextFieldContainer(),
                        TextFieldContainer(),
                        TextFieldContainer(),
                        LoginLink(login: false)
                      ],
                    )
                  )
                ],
              ),
            ],
          )
      ),
    );
  }
}
