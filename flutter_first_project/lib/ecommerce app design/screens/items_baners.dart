import 'package:flutter/material.dart';

class ItemsBaners extends StatelessWidget {
  final String image;
  const ItemsBaners({super.key,required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 180,
            margin:EdgeInsets.symmetric(horizontal: 15) ,
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/image.jpg'),

            )
            ),
          );

          
  }
}