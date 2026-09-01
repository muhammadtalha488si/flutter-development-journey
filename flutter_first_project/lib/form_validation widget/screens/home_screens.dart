import 'package:flutter/material.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  TextEditingController name=TextEditingController();
    TextEditingController phone=TextEditingController();
      TextEditingController email=TextEditingController();
        TextEditingController password=TextEditingController();
        final formKey=GlobalKey<FormState>();
        
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text('HOME'),
      ),

      body: Form(
        key: formKey,
        child: Column(
          spacing: 15,
          children: [

           SizedBox(height: 10),
        
            TextFormField(
              controller: name,
              decoration: InputDecoration(
                hintText: 'Name'
              ),
              validator: (value) {
                if(value==null||value.isEmpty){
                return 'plese enter your name';
              }
               return null;
              }, 
            ),
        
            
            TextFormField(
              controller: phone,
              decoration: InputDecoration(
                hintText: 'phone'
              ),
              validator: (value) {
                if(value==null||value.isEmpty){
                return 'plese enter your phone';
              }
              if(value.length !=11){
                return'length must be 11';
              }
               return null;
              },
            ),
        
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                hintText: 'Email'            
              ),
              validator: (value) {
                if(value==null||value.isEmpty){
                return 'plese enter your email';
              }
               return null;
              },
            ),
        
             TextFormField(
              controller: password,
              decoration: InputDecoration(
                hintText: 'password'             
              ),
              validator: (value) {
                if(value==null||value.isEmpty){
                return 'plese enter your password';
              }
               return null;
              },
            ),
        
            ElevatedButton(
              onPressed: (){
               if(formKey.currentState!.validate());
                print('Name:${name.text}');
                print('phone:${phone.text}');
                print('Email:${email.text}');
                print('password:${password.text}');
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}