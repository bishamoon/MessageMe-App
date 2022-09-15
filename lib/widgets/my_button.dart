import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final Color color;
  final String title;
  final VoidCallback onpressed;

  const Mybutton(
      {super.key,
      required this.color,
      required this.title,
      required this.onpressed});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Material(
        elevation: 5,
        color: color,
        borderRadius: BorderRadius.circular(10),
        child: MaterialButton(
          onPressed: onpressed,
          minWidth: 200,
          height: 42,
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Raleway-Regular',
                fontSize: 19),
          ),
        ),
      ),
    );
  }
}
