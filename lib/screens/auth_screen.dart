import 'package:flutter/material.dart';
import 'package:flutter_hw_2/components/custom_textfield.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      "EMAIL",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomTextField(),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Text('Forgot password?',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.blue[400])),
                      ),
                      
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomTextField(),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Text(
                      "Log in",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    height: 45,
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blue[400],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Container(
                padding: EdgeInsets.all(5),
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Colors.black),
                        children: <TextSpan>[
                      TextSpan(text: "Don't have an account? "),
                      TextSpan(
                          text: "Sign up",
                          style: TextStyle(color: Colors.blue[700]))
                    ])),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
