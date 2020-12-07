import 'package:flutter/material.dart';


class LoginLink extends StatelessWidget {
  final bool login;
  final Function press;
  const LoginLink({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don’t have an Account ? " : "Already have an Account ? ",
          style: TextStyle(
            color: Colors.black54,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w600),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Gilroy',
            ),
          ),
        )
      ],
    );
  }
}
