import 'package:flutter/material.dart';




class SimpleAppBar extends StatefulWidget {
  //AppBar color. Green by default.
  Color color;

  //AppBar height. 50 by default.
  double height;

  //AppBar child of items (Optional).
  Widget? child;

  //Whether AppBar is top or bottom
  bool bottom;

  //AppBar's border radius
  double borderRadius;

  SimpleAppBar({
    this.color=Colors.green,
    this.height=50,
    this.child,
    this.bottom=false,
    this.borderRadius=0
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
    return Align(
      alignment: widget.bottom==false? Alignment.topCenter:Alignment.bottomCenter,
      child: Container(
        decoration: BoxDecoration(
            color: widget.color,
            shape: BoxShape.rectangle,
            borderRadius: widget.bottom==false? BorderRadius.only(bottomRight:Radius.circular(widget.borderRadius) ,bottomLeft:Radius.circular(widget.borderRadius)) : BorderRadius.only(topRight:Radius.circular(widget.borderRadius) ,topLeft:Radius.circular(widget.borderRadius))
        ),
        height:widget.bottom==false? StatusBarHeight+AppBarHeight:AppBarHeight,
        width:ScreenWidth,
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
              height: AppBarHeight,
              width: ScreenWidth,
              child: widget.child
          ),
        ),),
    );
  }


  @override
  Widget build(BuildContext context) {
    return SimpleAppBr();
  }


}

