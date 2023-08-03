import 'package:flutter/material.dart';
import 'package:shop_shop/DesiFood.dart';
import 'package:shop_shop/FastFood.dart';

class Items extends StatefulWidget {
  static const String id = "Items";
  const Items({Key? key}) : super(key: key);

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b1b1b),
      appBar: AppBar(
        title: Center(
            child: Text(
          "Select Your Catagory>",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        )),
        backgroundColor: Color(0xffffb400),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            //DrawerHeader(child: Text("Muhammad Husnain")),
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(38),
                        topRight: Radius.circular(100)),
                    color: Color(0xff222222)),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("images/AminAhsan.jpeg")),
                accountName: Text("Amin Ahsan"),
                accountEmail: Text("canals786@gmail.com")),

            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text("Cart"),
                onTap: () {}),
            Divider(
              color: Color(0xff4c4c4c),
              thickness: 1.3,
              indent: 7,
              endIndent: 7,
            ),

            ListTile(
                leading: Icon(Icons.eject),
                title: Text("Traditional Food"),
                onTap: () {
                  Navigator.pushNamed(context, Traditional.id);
                }),
          ],
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 5,
          ),
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 11,
                )
              ],
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(100),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(30)),
              color: Color(0xff000000),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  alignment: Alignment(1, -1),
                  //fit: BoxFit.fill,

                  image: AssetImage("images/Pizza2.jpeg")),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreenTwo(),
                    ));
              },
              child: Text(
                "Fast Food",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 37,
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.white, blurRadius: 11)],
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(100)),
              //borderRadius: BorderRadius.circular(50),
              color: Color(0xff000000),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  alignment: Alignment(1, 1),
                  //fit: BoxFit.fill,

                  image: AssetImage("images/Traditional.jpeg")),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Traditional(),
                    ));
              },
              child: Center(
                child: RichText(
                  text: TextSpan(
                      text: "Hello",
                      style: Theme.of(context).textTheme.bodyText2,
                      children: [
                        TextSpan(
                            text: "Tradition",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                color: Colors.white)),
                        TextSpan(
                          text: " Food",
                          style: TextStyle(fontSize: 38, color: Colors.white),
                        )
                      ]
                      // Text(
                      //   "Traditional",
                      //   style: TextStyle(
                      //     fontWeight: FontWeight.bold,
                      //     fontSize: 37,
                      //     color: Color(0xffffffff),
                      //   ),
                      // ),
                      ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
