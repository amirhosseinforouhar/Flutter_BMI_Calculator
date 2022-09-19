import "package:flutter/material.dart" ; 


class WhiteSpace extends StatelessWidget {

  final double height;
  final double width;

  const WhiteSpace({
    Key? key , 
    this.width = 0 ,
    this.height = 0 ,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width , height: height,);
  }
}