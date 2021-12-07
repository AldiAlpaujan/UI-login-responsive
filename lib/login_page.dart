import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    final widthDevice = MediaQuery.of(context).size.width;
    final bodyHeight = heightDevice - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: bodyHeight,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(widthDevice * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Login...",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: bodyHeight * 0.05,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Or Sign UP",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: bodyHeight * 0.015,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )),
                SizedBox(
                  height: bodyHeight * 0.1,
                ),
                getTextField(bodyHeight, widthDevice, "Username"),
                getTextField(bodyHeight, widthDevice, "Password"),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text("Forgot Password ?"),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        foregroundColor: MaterialStateProperty.all(Colors.blue),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: widthDevice * 0.01)),
                        textStyle: MaterialStateProperty.all(TextStyle(
                          fontSize: widthDevice * 0.03,
                          fontWeight: FontWeight.w700,
                        ))),
                  ),
                ),
                SizedBox(
                    height: bodyHeight * 0.05,
                    width: widthDevice,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("Login"))),
                SizedBox(height: bodyHeight * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 1,
                      width: widthDevice * 0.35,
                      color: Colors.grey,
                    ),
                    Text(
                      "or sign up via",
                      style: TextStyle(
                        fontSize: widthDevice * 0.03,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      height: 1,
                      width: widthDevice * 0.35,
                      color: Colors.grey,
                    ),
                  ],
                ),
                SizedBox(height: bodyHeight * 0.03),
                SizedBox(
                    height: bodyHeight * 0.05,
                    width: widthDevice,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.grey,
                        ),
                        onPressed: () {},
                        child: const Text("Google"))),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding getTextField(double bodyHeight, double widthDevice, String hintText) {
    return Padding(
      padding:
          EdgeInsets.fromLTRB(0, bodyHeight * 0.010, 0, bodyHeight * 0.005),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widthDevice * 0.02),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widthDevice * 0.02),
          ),
          contentPadding: EdgeInsets.symmetric(
              horizontal: widthDevice * 0.016, vertical: bodyHeight * 0.014),
          hintText: hintText,
        ),
        onChanged: (value) {},
      ),
    );
  }
}
