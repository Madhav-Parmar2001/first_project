//
// import 'package:flutter/material.dart';
//
// import 'NavigatorCalculatorExample2.dart';
//
// class NavigatorCalculator1 extends StatefulWidget
// {
//   @override
//   _NavigatorCalculator1State createState() => _NavigatorCalculator1State();
// }
//
// class _NavigatorCalculator1State extends State<NavigatorCalculator1>
// {
//
//   TextEditingController name1 = TextEditingController();
//   TextEditingController name2 = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Navigator Calculator Page 1"),
//       ),
//       body: Container(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 20.0,),
//             Text("Name:1",style: TextStyle(
//               fontWeight:FontWeight.bold,
//               fontSize: 15.0,
//               color: Colors.black,
//               wordSpacing: 30,
//             ),),
//             TextField(
//               controller: name1,
//               keyboardType: TextInputType.name,
//             ),
//
//             SizedBox(height: 20.0,),
//             Text("Name:2",style: TextStyle(
//               fontWeight:FontWeight.bold,
//               fontSize: 15.0,
//               color: Colors.black,
//               wordSpacing: 30,
//             ),),
//             TextField(
//               controller: name2,
//               keyboardType: TextInputType.name,
//             ),
//
//             SizedBox(height: 20.0,),
//             Container(
//               alignment: AlignmentDirectional.topCenter,
//               child: RaisedButton(
//                 child: Text("Submit"),
//                 color: Colors.green,
//                 onPressed: (){
//                   var full1 = name1.text.toString();
//                   var full2 = name2.text.toString();
//                   print("Name 1 : "+full1);
//                   print("Name 2 : "+full2);
//                   Navigator.of(context).push(
//                       MaterialPageRoute(builder: (context)=>NavigatorCalculator2(full1,full2),)
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
