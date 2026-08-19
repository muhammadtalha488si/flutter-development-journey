import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  GlobalKey formKey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: formKey,
          child: Column(
            spacing: 15,
            children: [
              FlutterLogo(size: 100),
            Text('Login Hare',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Text('plese enter your email & password to get started with your accout',style: TextStyle(fontWeight:FontWeight.w600),),
              TextField(
                controller: email,
                decoration: InputDecoration(
                  hintText: 'Email',
                 border: OutlineInputBorder()
                ),
              ),
          
               TextField(
                controller: password,
                decoration: InputDecoration(
                  hintText: 'password',
                 border: OutlineInputBorder()
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: Text('login'),
                ),
              ),
              TextButton(
                onPressed: (){},
                child: Text('forgot password ?'),
              ),
              Spacer(),
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
        ),
      ),
    );
  }
}