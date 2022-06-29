import 'package:flutter/material.dart';

class ImageExample extends StatefulWidget {
  @override
  _ImageExampleState createState() => _ImageExampleState();
}

class _ImageExampleState extends State<ImageExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: Column(
        children: [
            Icon(Icons.account_balance_wallet,size: 100.0,color: Colors.blue,),
            Image.asset("images/logo.jpg",width: 100,height: 100,),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCSL-IJriRBITrFkXs6-NN2q3IuT-BDsU06g&usqp=CAU"),
            FadeInImage.assetNetwork(placeholder: "images/logo.jpg", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5oRV6ZEULuKxz5sLZAafHKMbcjLRIZd2YJw&usqp=CAU")
        ],
      ),
    );
  }
}
