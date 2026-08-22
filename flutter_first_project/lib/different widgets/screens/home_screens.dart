// // ignore_for_file: deprecated_member_use

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class HomeScreens extends StatefulWidget {
//   const HomeScreens({super.key});

//   @override
//   State<HomeScreens> createState() => _HomeScreensState();
// }

// class _HomeScreensState extends State<HomeScreens> {
//   bool isConnected=false;
//   String? groupValue='one';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 88, 72, 72),
//         title: Text('Home',style: TextStyle(color: Colors.white70),),
//       ),
//       body: Center(
//         child: Column(
//           spacing: 40,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
          
//             // Switch(
//             //   value: isConnected,
//             //   activeThumbColor:Colors.deepPurpleAccent,
//             //   activeTrackColor:const Color.fromARGB(255, 255, 68, 71) ,
//             //   inactiveThumbColor: const Color.fromARGB(255, 82, 61, 1),
//             //   inactiveTrackColor: Colors.green,
//             //   onChanged: (value){
//             //   setState(() {
//             //     isConnected=value;
//             //   });
//             //   },
//             // ),
        
//             // SwitchListTile(
//             //   value: isConnected,
//             //   onChanged: (value) {
//             //     setState(() {
//             //       isConnected=value;
//             //     });
//             //   },   
//             //   title: Text('internet connectivity'),
//             //   subtitle: Text('this is the sub title'),      
//             // ),
        
//             // Checkbox(
//             //   value: isConnected,
//             //   onChanged: (value){
//             //     setState(() {
//             //       isConnected=value!;
//             //     });
//             //   },
//             // ),
//             // CheckboxListTile(
//             //    value: isConnected,
//             //   onChanged: (value){
//             //     setState(() {
//             //       isConnected=value!;
//             //     });
//             //   },
//             //   title: Text('internet connectivity'),
//             //   subtitle: Text('this is the sub title'),   
//             // ),
        
//             // RadioMenuButton(          
//             //   value: 'one',
//             //   groupValue: groupValue,
//             //   onChanged: (value) {
//             //     setState(() {
//             //       groupValue=value;
//             //     });
//             //   },
//             //   child: Text('one'),
//             // ),
        
//             // RadioMenuButton(          
//             //   value: 'two',
//             //   groupValue: groupValue,
//             //   onChanged: (value) {
//             //     setState(() {
//             //       groupValue=value;
//             //     });
//             //   },
//             //   child: Text('two'),
//             // ),
        
//             // RadioMenuButton(          
//             //   value: 'three',
//             //   groupValue: groupValue,
//             //   onChanged: (value) {
//             //     setState(() {
//             //       groupValue=value;
//             //     });
//             //   },
//             //   child: Text('three'),
//             // ),
        
//             // RadioMenuButton(          
//             //   value: 'four',
//             //   groupValue: groupValue,
//             //   onChanged: (value) {
//             //     setState(() {
//             //       groupValue=value;
//             //     });
//             //   },
//             //   child: Text('four'),
//             // ),
//             // RadioListTile(
//             //    value: 'five',
//             //   groupValue: groupValue,
//             //   onChanged: (value) {
//             //     setState(() {
//             //       groupValue=value;
//             //     });
//             //   },
//             //   title: Text('five'),
//             //   subtitle: Text('this is sub title'),
//             // ),
        
        
        
//             // Wrap(
//             //   spacing: 10,
//             //   runSpacing: 10,
//             //   children: [
        
//             //     Container(
//             //       color: Colors.amberAccent,
//             //       height: 50,
//             //       width: 50,
//             //     ),
        
//             //      Container(
//             //       color: const Color.fromARGB(255, 64, 255, 109),
//             //       height: 50,
//             //       width: 50,
//             //     ),
        
//             //      Container(
//             //       color: const Color.fromARGB(255, 255, 64, 64),
//             //       height: 50,
//             //       width: 50,
//             //     ),
        
//             //      Container(
//             //       color: Colors.amberAccent,
//             //       height: 50,
//             //       width: 50,
//             //     ),
        
//             //      Container(
//             //       color: const Color.fromARGB(255, 64, 255, 109),
//             //       height: 50,
//             //       width: 50,
//             //     ),
        
//             //      Container(
//             //       color: const Color.fromARGB(255, 255, 64, 64),
//             //       height: 50,
//             //       width: 50,
//             //     ),Container(
//             //       color: Colors.amberAccent,
//             //       height: 50,
//             //       width: 50,
//             //     ),
        
//             //      Container(
//             //       color: const Color.fromARGB(255, 64, 255, 109),
//             //       height: 50,
//             //       width: 50,
//             //     ),
        
//             //      Container(
//             //       color: const Color.fromARGB(255, 255, 64, 64),
//             //       height: 50,
//             //       width: 50,
//             //     ),Container(
//             //       color: Colors.amberAccent,
//             //       height: 50,
//             //       width: 50,
//             //     ),
        
//             //      Container(
//             //       color: const Color.fromARGB(255, 64, 255, 109),
//             //       height: 50,
//             //       width: 50,
//             //     ),
        
//             //      Container(
//             //       color: const Color.fromARGB(255, 255, 64, 64),
//             //       height: 50,
//             //       width: 50,
//             //     ),Container(
//             //       color: Colors.amberAccent,
//             //       height: 50,
//             //       width: 50,
//             //     ),
        
//             //      Container(
//             //       color: const Color.fromARGB(255, 64, 255, 109),
//             //       height: 50,
//             //       width: 50,
//             //     ),
//             //   ],
//             // )

//             CircularProgressIndicator(
             
//             ),


        
//             LinearProgressIndicator(

//             )

//           ],
//         ),
//       ),
//     );
//   }
// }