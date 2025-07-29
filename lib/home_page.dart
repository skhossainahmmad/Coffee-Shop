import 'package:coffee_shop/coffee_details_page.dart';
import 'package:coffee_shop/constants/app_color.dart';
import 'package:coffee_shop/login_page.dart';
import 'package:coffee_shop/model/CoffeeModel.dart';
import 'package:coffee_shop/signup_page.dart';
import 'package:coffee_shop/splash_page.dart';
import 'package:coffee_shop/widget/coffee_card_view.dart';
import 'package:coffee_shop/widget/custom_elvated_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePage> {
  List<String> locationList = ["Dhaka", "Khulna", "Tala", "Jessore"];
  String selectedLocation = "Dhaka";
  List<String> coffeeTypes = ["Cappuccino", "Macchiato", "Espresso", "Latte"];
  final List<CoffeeModel> coffeeList = [
    CoffeeModel(
      imagePath: 'assets/images/coffee_cup_1.png',
      title: 'Cappuccino',
      shortTitle: 'With Oat Milk',
      price: '4.20',
    ),
    CoffeeModel(
      imagePath: 'assets/images/coffee_cup_2.png',
      title: 'Latte',
      shortTitle: 'With Almond Milk',
      price: '3.80',
    ),
    CoffeeModel(
      imagePath: 'assets/images/coffee_cup_3.png',
      title: 'Espresso',
      shortTitle: 'No Milk',
      price: '3.20',
    ),
    CoffeeModel(
      imagePath: 'assets/images/coffee_cup_4.png',
      title: 'Macchiato',
      shortTitle: 'Strong Shot',
      price: '4.00',
    ),
    // add more if needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // ---------- Top Location Dropdown ----------
            Container(
              width: double.infinity,
              height: 161,
              color: Colors.black,
              padding: const EdgeInsets.only(top: 64, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Location Dropdown
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        child: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: Colors.white,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(builder: (_) => SplashPage()),
                          );
                        },
                      ),
                      Text("Location", style: TextStyle(color: Colors.white)),
                      DropdownButton<String>(
                        value: selectedLocation,
                        items:
                            locationList.map((location) {
                              return DropdownMenuItem(
                                value: location,
                                child: Text(location),
                              );
                            }).toList(),
                        onChanged: (newLocation) {
                          setState(() {
                            selectedLocation = newLocation!;
                          });
                        },
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        dropdownColor: Colors.black,
                        icon: Icon(Icons.arrow_drop_down, color: Colors.white),
                        underline: Container(height: 2, color: Colors.white),
                      ),
                    ],
                  ),
                  Container(
                    width: 48,
                    height: 65,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/profile_defult_image.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // ---------- Horizontal Scroll Buttons ----------
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  itemCount: coffeeTypes.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: CustomElevatedBtn(
                        elevatedButtonText: coffeeTypes[index],
                        backgroundcolor: AppColor.primaryColor,
                        forgroundcolor: AppColor.whiteText,
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(builder: (_) => LoginPage()),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ),

            // ---------- Cards ----------
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: SafeArea(
                  child: GridView.builder(
                    itemCount: coffeeList.length, // 5 rows × 2 columns
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // 2 cards per row
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 0.67,
                    ),
                    itemBuilder: (context, index) {
                      return CoffeeCardView(
                        imagePath: coffeeList[index].imagePath.toString(),
                        title: coffeeList[index].title.toString(),
                        shortTitle: coffeeList[index].shortTitle.toString(),
                        price: coffeeList[index].price.toString(),
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(builder: (_) => SignUpPage()),
                          );
                        },
                        onCardTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (_) => CoffeeDetailsPage(),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
