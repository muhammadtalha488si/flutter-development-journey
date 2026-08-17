import 'package:flutter/material.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
TextEditingController email=TextEditingController();
TextEditingController password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Home page'),
      ),
      body: Column(
        children: [
          SizedBox(height: 100),
          TextField(
            controller: email,
            decoration: InputDecoration(
              hintText: 'Enter Your Email',
              labelText: ' your email',
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              prefixIcon: Icon(Icons.email_rounded),
              suffixIcon: IconButton(
                onPressed:(){
                  email.clear();
                },
               icon:Icon(Icons.close),
                 )
            ),
          ),

          SizedBox(height: 100),
          TextField(
            controller: password,
            obscureText: true,
            obscuringCharacter: '*',
            keyboardType:TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Enter your password',
              labelText: ' your password',
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              prefixIcon: Icon(Icons.lock  ),
              suffixIcon: IconButton(
                onPressed:(){
                  password.clear();

                },
               icon:Icon(Icons.close),

                 )
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: (){
              print(email.text);
            },
            child: Text('login'),
          )
        ],
      ),
    );
  }
}