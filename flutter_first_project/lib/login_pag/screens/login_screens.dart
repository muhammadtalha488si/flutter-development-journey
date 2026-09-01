import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  GlobalKey<FormState> formKey =GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey, 
        child: Stack(
          children: [
            ListView(
          padding: EdgeInsets.all(20),
          children: [
            SizedBox(height: 100),
            FlutterLogo(size: 100),
            SizedBox(height: 15),

          Text(
            'Login Hare',
            textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                ),
              ),

          Text(
            'plese enter your email & password to get started with your accout',
            style: TextStyle(
              fontWeight:FontWeight.w600
              ),
              ),
            
            SizedBox(height: 15,),
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                hintText: 'Email',
               border: OutlineInputBorder()
              ),
             validator: (value){
              if(value ==null||value.isEmpty){
                return 'plese enter your email';
              }
              return null;
             },
            ),
        
            SizedBox(height: 15,),      
             TextFormField(
              controller: password,
              decoration: InputDecoration(
                hintText: 'password',
               border: OutlineInputBorder()
              ),
               validator: (value){
              if(value ==null||value.isEmpty){
                return 'plese enter your password';
              }
              return null;
             },
            ),

            SizedBox(height: 15,),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: (){
                  if(formKey.currentState!.validate());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                child: Text('login'),
              ),
            ),

            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){},
                  child: Text('forgot password ?'),
                ),
              ],
            ),

            SizedBox(height: 10,),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton(
                onPressed: (){},
                child: Text('Do not have acount ? Register Hare'),
              ),
            )
          ],
        ),
        Positioned(
          top: -130,
          right: -130,
          child: Container(         
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
          ),
        )
          ],
        )
      ),
    );
  }
}