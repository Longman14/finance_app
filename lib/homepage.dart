import 'package:finance_app/profile_cards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          //The first row containing the options button and profile picture
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.short_text_rounded, size: 50,),
                  ClipRRect(

                    borderRadius: BorderRadius.circular(10),
                      child: Image.asset('images/user6.jpg', height: 50,
                          width: 50, fit: BoxFit.cover, ))
                ],
              ),



            ),
            //The card section containing account information/balance

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black,
                ),

                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('. . . . 4335', style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),
                          Icon(Icons.toll_outlined,
                          color: Colors.white,
                          size: 40,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text('Balance', style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),),

                              SizedBox(height: 5,),

                              Text('\$4,560.20',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                fontWeight: FontWeight.bold)
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],

                ),

              ),

            ),
            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Text('Send Money', style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16
                  ),),
                ],
              ),
            ),
            //

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: [
                      Container(
                        height: 35,
                        width:  35,
                        decoration: BoxDecoration(
                            color: Colors.black,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Icon(Icons.add, color: Colors.white,),
                      ),



                    ],
                  ),


                ),
                Expanded(
                  child: Row(
                    children: [
                      
                      ProfileCard(name: 'Dasola', picNumber: 1),
                      ProfileCard(name: 'My Crush', picNumber: 5),
                      ProfileCard(name: 'Dahmy', picNumber:2),
                      // ProfileCard(name: 'Longman', picNumber: picNumber)
                    ],
                  ),
                )
              ],
            ),
            


            

          ],
        ),
      ),
    );
  }
}
