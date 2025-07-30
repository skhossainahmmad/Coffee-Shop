import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:coffee_shop/login_page.dart';
import 'package:coffee_shop/widget/text_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/register.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 110, left: 50),
                  child: Text(
                    "Create \nAccount",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),

                Container(
                  color: Colors.transparent,
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.4,
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    children: [
                      CustomTextField(hintText: "Name"),
                      SizedBox(height: 20),
                      CustomTextField(hintText: "Email"),
                      SizedBox(height: 20),
                      CustomTextField(hintText: "Password"),
                      SizedBox(height: 36),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.black,
                            child: IconButton(
                              color: Colors.white,
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 36),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(builder: (_) => LoginPage()),
                              );
                            },
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w100,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
