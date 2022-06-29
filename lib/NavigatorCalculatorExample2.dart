// import 'package:flutter/material.dart';
//
// class NavigatorCalculator2 extends StatefulWidget
// {
//
//   var number1 = "";
//   var number2 = "";
//   NavigatorCalculator2(this.number1,this.number2);
//
//   @override
//   _NavigatorCalculator2State createState() => _NavigatorCalculator2State();
// }
//
// class _NavigatorCalculator2State extends State<NavigatorCalculator2>
// {
//
//   var total=0;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     setState(() {
//       total = int.parse(widget.number1) + int.parse(widget.number2);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Navigator Calculator Page 2"),
//       ),
//       body: Column(
//         children: [
//           SizedBox(height: 20.0,),
//           Container(
//             height: 25.0,
//             width: MediaQuery.of(context).size.width,
//             //color: Colors.blue,
//             alignment: AlignmentDirectional.topCenter,
//             child: Text(widget.number1,style: TextStyle(
//               color: Colors.black,
//               fontSize: 20.0,
//               fontWeight: FontWeight.bold,
//             ),),
//           ),
//
//           SizedBox(height: 20.0,),
//           Container(
//             height: 25.0,
//             width: MediaQuery.of(context).size.width,
//             //color: Colors.blue,
//             alignment: AlignmentDirectional.topCenter,
//             child: Text(widget.number2,style: TextStyle(
//               color: Colors.black,
//               fontSize: 20.0,
//               fontWeight: FontWeight.bold,
//             ),),
//           ),
//           Divider(),
//
//           SizedBox(height: 20.0,),
//           Container(
//             height: 25.0,
//             width: MediaQuery.of(context).size.width,
//             //color: Colors.blue,
//             alignment: AlignmentDirectional.topCenter,
//             child: Text(total.toString(),style: TextStyle(
//               color: Colors.black,
//               fontSize: 20.0,
//               fontWeight: FontWeight.bold,
//             ),),
//           ),
//         ],
//       ),
//     );
//   }
// }
