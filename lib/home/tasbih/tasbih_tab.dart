import 'package:flutter/material.dart';

class TasbihScreen extends StatelessWidget {
  const TasbihScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(image: AssetImage("assets/images/headofseb7a.png")),
        Image(image: AssetImage("assets/images/bodyofseb7a.png")),
      ],
    ),
    );
  }
}
