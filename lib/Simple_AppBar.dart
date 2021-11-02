import 'package:flutter/material.dart';




class SimpleAppBar extends StatefulWidget {
  //AppBar color. Green by default.
  Color color;

  //AppBar height. 50 by default.
  double height;

  //AppBar child of items (Optional).
  Widget? child;

  SimpleAppBar({
    this.color=Colors.green,
    this.height=50,
    this.child
  });

  @override
  _SimpleAppBarState createState() => _SimpleAppBarState();
}

class _SimpleAppBarState extends State<SimpleAppBar> {

  Widget SimpleAppBr(){

    //StatusBar height
    double StatusBarHeight = MediaQuery.of(context).padding.top; //constant

    //AppBar height as given by the user
    double AppBarHeight=widget.height; //variable

    //Screen Width
    double ScreenWidth=MediaQuery.of(context).size.width; //constant

    //AppBar
    return Container(
      height:StatusBarHeight+AppBarHeight,
      width:ScreenWidth,color: widget.color,
      child: Align(
      alignment: Alignment.bottomLeft,
      child: Container(
          height: AppBarHeight,
          width: ScreenWidth,
          child: widget.child
      ),
    ),);
  }


  @override
  Widget build(BuildContext context) {
    return SimpleAppBr();
  }


}
