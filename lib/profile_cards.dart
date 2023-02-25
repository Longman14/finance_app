import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final int picNumber;
  const ProfileCard({Key? key, required this.name, required this.picNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: (

          Container(
            height: 80,
            width: 80,
                     decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(

                  child: Image.asset('images/user$picNumber.jpeg', fit: BoxFit.cover,
                    height: 40,
                    width: 40,),
                  borderRadius: BorderRadius.circular(10),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
