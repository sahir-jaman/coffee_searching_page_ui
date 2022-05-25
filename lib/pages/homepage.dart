import 'package:coffee_shop_ui/helper/coffeTypeSelecor.dart';
import 'package:flutter/material.dart';

import '../helper/cupImageContainer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.person),
          ),
        ],
      ),
      body: Column(
        children: [
          //find the best coffee
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Find The Best COffee For You",
              style: TextStyle(
                fontFamily: "LobsterTwo",
                fontSize: 65.0,
                color: Colors.white,
              ),

              //search Bar
            ),
          ),

          //searchBar
          const Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Find your Coffee",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.orange,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                  borderRadius: BorderRadius.all(Radius.circular(80.0)),
                ),
              ),
            ),
          ),

          //Select coffee types
          Container(
            margin: const EdgeInsets.only(bottom: 20.0),
            height: 20,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                SizedBox(
                  width: 20.0,
                ),
                CoffeTypeSelector(
                  type: "Cuppaccino",
                  isSelected: true,
                ),
                CoffeTypeSelector(
                  type: "Present",
                  isSelected: false,
                ),
                CoffeTypeSelector(
                  type: "SugarFree",
                  isSelected: false,
                ),
              ],
            ),
          ),

          //horizontal listView of Coffee tiles
          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              CupImageContainer(
                imageName: "coffee1.jpg",
                cfName: "Cappuccino",
                price: "4.5",
              ),
              CupImageContainer(
                imageName: "coffee2.jpg",
                cfName: "ColdCoffee",
                price: "3.5",
              ),
              CupImageContainer(
                imageName: "coffee3.jpg",
                cfName: "NCoffee",
                price: "1.5",
              ),
            ],
          ))
        ],
      ),

      //Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home,color: Colors.grey,),
          label: "Home",
          
        ),
        BottomNavigationBarItem(icon: Icon(Icons.store,color: Colors.grey,), label: "Store"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,color: Colors.grey
            ),
            label: "favorite"),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications,color: Colors.grey), label: "Notification"),
      ]),
    );
  }
}
