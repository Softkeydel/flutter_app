import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Full name".toUpperCase(),
            style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.w600,
                fontSize: 15
            ),
          ),
          TextField(
              obscureText: false,
              decoration: InputDecoration(
                //labelText: title ,  // you can change this with the top text  like you want
                hintText: "Please enter your" ,
              )
          )
        ],
      ),
    );
  }
}
