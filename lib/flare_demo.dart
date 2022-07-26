import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class FlareDemo extends StatefulWidget {
  const FlareDemo({Key? key}) : super(key: key);

  @override
  State<FlareDemo> createState() => _FlareDemoState();
}

class _FlareDemoState extends State<FlareDemo> {
  bool _isOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 102, 18, 222),
      body: GestureDetector(
        onTap: () {
          setState(() {
            _isOpen = !_isOpen;
          });
        },
        child: FlareActor(
          'assets/button-animation.flr',
          animation: _isOpen ? 'activate' : 'deactivate',
        ),
      ),
    );
  }
}
