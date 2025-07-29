import 'package:coffee_shop/home_page.dart';
import 'package:coffee_shop/widget/custome_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
        child: Column(
          children: [
            Image.asset(
              "assets/images/splash_coffee_cup.png",
              width: MediaQuery.of(context).size.width,
              height: 508,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Color.fromRGBO(40, 0, 0, 1),
                child: Column(
                  children: [
                    SizedBox(height: 16),
                    Text(
                      "Time for a coffee break...",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        left: 27,
                        right: 27,
                        top: 16,
                      ),
                      child: Text(
                        "Your daily dose of fresh brew delivered to your doorstep.Start your coffee journey now!",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                    SizedBox(height: 60),
                    CustomeButton(
                      text: "Get Started",
                      width: 350,
                      height: 50,
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (_) => HomePage()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
