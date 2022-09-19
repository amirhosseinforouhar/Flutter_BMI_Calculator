import "package:flutter/material.dart" ;
import 'package:my_app/widgets/home_page_body.dart'; 


class HomePage extends StatelessWidget {

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text("BMI Calculator"),
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Body()
    );
  }
}