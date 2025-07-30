import 'package:coffee_shop/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:coffee_shop/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
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
                image: AssetImage("assets/images/login.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 110, left: 50),
                  child: Text(
                    "Welcome \nBack",
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
                    top: MediaQuery.of(context).size.height * 0.5,
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    children: [
                      customTextField(
                        _emailController,
                        TextInputType.emailAddress,
                        "Hossain@gmail.com",
                        "Email",
                        Icons.email_outlined,
                      ),

                      SizedBox(height: 20),

                      customTextField(
                        _passwordController,
                        TextInputType.text,
                        "H124_@9s",
                        "Password",
                        Icons.remove_red_eye_outlined,
                      ),
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
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (_) => SignUpPage(),
                                ),
                              );
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w100,
                                fontSize: 20,
                              ),
                            ),
                          ),

                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(builder: (_) => HomePage()),
                              );
                            },
                            child: Text(
                              "More Shop ",
                              style: TextStyle(
                                color: Colors.black,
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

Widget customTextField(controller, keybordType, hint, labelText, prefixIcon) {
  return TextField(
    controller: controller,
    keyboardType: keybordType,
    obscureText: false,
    decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      hintText: hint,
      labelText: labelText,
      prefixIcon: Icon(prefixIcon, color: Colors.lightBlue),
    ),
  );
}
