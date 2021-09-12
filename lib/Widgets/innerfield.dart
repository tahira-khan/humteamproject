import 'package:flutter/material.dart';

class Innerfield extends StatelessWidget {
  double width, height;
  var label, text;

  Innerfield(
      {required this.width, required this.height, this.label, this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(height: height * 0.03),
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            width: width * 0.6,
            child: Text('$label ',
                maxLines: height.round(),
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: height * 0.02)),
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            width: width * 0.6,
            child: Text(
              '$text',
              maxLines: height.round(),
            ),
          ),
        ),
      ],
    );
  }
}
