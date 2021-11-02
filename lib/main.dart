import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Simple_AppBar.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body:
        simpleappbar()
        ));
  }

  simpleappbar(){
    return SimpleAppBar(
      color: Colors.purple,
      height: 60,
      child: Stack(
        children: [
          Align(alignment:Alignment(-0.8,0),child: Icon(Icons.monetization_on_outlined,size: 30,color: Colors.white,)),
          Align(alignment:Alignment(0,0), child: Icon(Icons.favorite,size: 30,color: Colors.white,),),
          Align(alignment:Alignment(0.8,0),child:Text("100",style:TextStyle(fontSize: 20,color: Colors.white))),
        ],
      ),
    );
  }



}