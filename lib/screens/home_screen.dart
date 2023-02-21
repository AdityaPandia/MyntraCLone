import 'package:flutter/material.dart';
import 'package:upgradx_assignment/carousel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF8F5F4),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Myntra',
            hintStyle:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            border: InputBorder.none,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.search),
            color: Colors.black,
            tooltip: 'Air it',
            onPressed: () {},
          ),
          IconButton(
            icon: new Icon(Icons.favorite_border_outlined),
            color: Colors.black,
            tooltip: 'Air it',
            onPressed: () {},
          ),
          IconButton(
            icon: new Icon(Icons.shopping_bag_outlined),
            color: Colors.black,
            tooltip: 'Air it',
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Color(0xFFF7F9F8),
          ),
          child: Text('App For Upgradx Internship'),
        ),
        ListTile(
            title: const Text('Upgradx Assignment'),
            onTap: () => Navigator.pop(context)),
        ListTile(
            title: const Text('Upgradx Assignment by Aditya Pandia'),
            onTap: () => Navigator.pop(context))
      ])),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              child: Container(
                color: Color(0xFFF8F5F4),
              ),
              height: 8.0,
            ),
            Image(
              image: AssetImage('images/constantimg.jpeg'),
              width: double.infinity,
              height: 50,
            ),
            SizedBox(
              child: Container(
                color: Color(0xFFF8F5F4),
              ),
              height: 8.0,
            ),
            carousel(),
            SizedBox(
              child: Container(
                color: Color(0xFFF8F5F4),
              ),
              height: 20.0,
            ),
            Container(
              color: Color(0xFFFFFFFF),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Container(
                      color: Color(0xFFFFFFFF),
                    ),
                    height: 15.0,
                  ),
                  Text(
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    '    FEATURED BRANDS',
                  ),
                  SizedBox(
                    child: Container(
                      color: Color(0xFFFFFFFF),
                    ),
                    height: 15.0,
                  ),
                  carousel(),
                  SizedBox(
                    child: Container(
                      color: Color(0xFFFFFFFF),
                    ),
                    height: 15.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

