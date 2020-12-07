import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final String label;
  final String hint;
  final String type;
  final ValueChanged<String> onChanged;

  const TextFieldContainer({
    Key key,
    this.label,
    this.hint,
    this.type,
    this.onChanged
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            label.toUpperCase(),
            style: TextStyle(
                color: Colors.orange,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600,
                fontSize: 13
            ),
          ),
          TextField(
              onChanged: onChanged,
              obscureText: type == "password",
              keyboardType: getInputType(type),
              style: TextStyle(
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
              decoration: InputDecoration(
                // labelText: label ,  // you can change this with the top text  like you want
                hintText: hint ,
              )
          )
        ],
      ),
    );
  }

  TextInputType getInputType(String type) {
    switch(type) {
      case "text":
      case "password":
        return TextInputType.text;
      case "email":
        return TextInputType.emailAddress;
      case "number":
      case "phone":
        return TextInputType.number;
      default:
        return TextInputType.text;
    }
  }
}
