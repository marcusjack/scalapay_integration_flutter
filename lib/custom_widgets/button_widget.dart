import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String content;
  final VoidCallback onPressed;
  final Color backGroundColor;
  final Color textColor;
  final Color borderColor;

  const ButtonWidget(
      {Key key,
      this.content,
      this.onPressed,
      this.backGroundColor,
      this.textColor,
      this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 4, 16, 4),
      child: new SizedBox(
        width: double.infinity,
        child: RaisedButton(
          onPressed: onPressed,
          color: backGroundColor,
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              content,
              style: TextStyle(
                color: textColor ?? Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: borderColor ?? Color(0xFF000000)),
            borderRadius: BorderRadius.circular(28.0),

          ),
        ),
      ),
    );
  }
}
