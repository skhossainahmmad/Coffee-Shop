import 'package:coffee_shop/home_page.dart';
import 'package:coffee_shop/login_page.dart';
import 'package:coffee_shop/widget/custome_button.dart';
import 'package:coffee_shop/widget/custom_elvated_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoffeeDetailsPage extends StatefulWidget {
  const CoffeeDetailsPage({super.key});

  @override
  State<CoffeeDetailsPage> createState() => _CoffeeDetailsPageState();
}

class _CoffeeDetailsPageState extends State<CoffeeDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
              bottom: 16,
              left: 8,
              right: 8,
            ),
            child: Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 375,
                  child: Image.asset(
                    "assets/images/coffee_cup_5.png",
                    fit: BoxFit.cover,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 64, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Icon(Icons.arrow_back_ios_new_outlined),
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(builder: (_) => HomePage()),
                          );
                        },
                      ),
                      Icon(Icons.favorite_border_outlined),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              top: 16,
              bottom: 16,
              left: 8,
              right: 8,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Espresso Coffee",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "With Chocolate",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ],
                  ),
                ),

                Icon(
                  Icons.star,
                  color: Color.fromRGBO(226, 125, 25, 1),
                  size: 24,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: " 4.5 ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(47, 45, 44, 1),
                        ),
                      ),
                      TextSpan(
                        text: "(2,330)",
                        style: TextStyle(
                          fontSize: 14.4,
                          color: Color.fromRGBO(128, 128, 128, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Divider(
            color: Color.fromRGBO(234, 234, 234, 1),
            thickness: 1,
            indent: 30,
            endIndent: 30,
          ),

          Padding(
            padding: const EdgeInsets.only(
              top: 16,
              bottom: 16,
              left: 8,
              right: 8,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Discription",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'A cappuccino is an approximately 150 ml (5 OZ) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More',
                ),
                SizedBox(height: 16),
                Text(
                  "Size",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomElevatedBtn(
                      elevatedButtonText: "Small",
                      backgroundcolor: Colors.white,
                      forgroundcolor: Colors.black,
                      onTap: () {},
                    ),
                    CustomElevatedBtn(
                      elevatedButtonText: "Medium",
                      backgroundcolor: Colors.white,
                      forgroundcolor: Colors.black,
                      onTap: () {},
                    ),
                    CustomElevatedBtn(
                      elevatedButtonText: "Large",
                      backgroundcolor: Colors.white,
                      forgroundcolor: Colors.black,
                      onTap: () {},
                    ),

                    CustomElevatedBtn(
                      elevatedButtonText: " Ex Large",
                      backgroundcolor: Colors.white,
                      forgroundcolor: Colors.black,
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Price", style: TextStyle(color: Colors.grey)),
                    Text(
                      "\$ 4.53",
                      style: TextStyle(
                        color: Color.fromRGBO(226, 125, 25, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CustomeButton(
                      text: "Buy Now",
                      width: 200,
                      height: 50,
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (_) => LoginPage()),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
