import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String btnText;
  final IconData icon;
  // late Text text;
  CustomButton(this.onPressed, this.btnText, this.icon);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      // fillColor: Colors.green,
      // splashColor: Colors.greenAccent,
      fillColor: Colors.amber,
      onPressed: onPressed,
      // shape: const StadiumBorder(),
      child: Container(
        padding: const EdgeInsets.all(10.10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Icon(icon),
            const SizedBox(
              width: 10.0,
            ),
            Text(btnText)
          ],
        ),
      ),
    );
  }
}
