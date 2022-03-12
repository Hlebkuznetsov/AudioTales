import 'package:audio_tales/widgets/containers/drawer.dart';
import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      body: Container(
          child: Center(
        child: Text('some text'),
      )),
    );
  }
}
