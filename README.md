<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->


## AppBar

Create an AppBar by setting height, color and child. This library helps to flexibly add items to the AppBar as you are free to fully control their position within the AppBar.



## Features

* Create an AppBar
* Set AppBar's height
* Set AppBar's color
* Add items to the AppBar by using child property. Control their position within the AppBar using Stack, Row, etc...



## Usage

```
SimpleAppBar(
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
```




## Parameters

Here are the accepted parameters :

| Name  | Type | Default Value | Description | 
| ------------- | ------------- | ------------- | ------------- | 
| color  | Color | Colors.green | AppBar's color | 
| height  | double | 50 | AppBar's height |
| child (Optional)  | Widget | null | AppBar's child of items | 



## example

<img src="assets/asset.png" width="300" height="600">





