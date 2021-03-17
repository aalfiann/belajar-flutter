import 'package:flutter/material.dart';

class BelajarPageLogin extends StatelessWidget {
  double getSmalldiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigdiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: -getSmalldiameter(context) / 3,
            top: -getSmalldiameter(context) / 3,
            child: Container(
              width: getSmalldiameter(context),
              height: getSmalldiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xFFB226B2), Color(0xFFFF6DA7)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            left: -getSmalldiameter(context) / 4,
            top: -getSmalldiameter(context) / 4,
            child: Container(
              child: Center(
                child: Text(
                  'Appname',
                  style: TextStyle(
                      fontFamily: 'Arial', fontSize: 30, color: Colors.white),
                ),
              ),
              width: getBigdiameter(context),
              height: getBigdiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xFFB226B2), Color(0xFFFF4891)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            right: -getBigdiameter(context) / 2,
            bottom: -getBigdiameter(context) / 2,
            child: Container(
              width: getSmalldiameter(context),
              height: getSmalldiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFFF3E9EE)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: Color(0xFFFF4891),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFFF4891))),
                            labelText: "Email: ",
                            labelStyle: TextStyle(color: Color(0xFFFF4891))),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.vpn_key,
                              color: Color(0xFFFF4891),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFFF4891))),
                            labelText: "Password: ",
                            labelStyle: TextStyle(color: Color(0xFFFF4891))),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'FORGOT PASSWORD?',
                        style:
                            TextStyle(color: Color(0xFFFF4891), fontSize: 11),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // button
                      Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xFFB226B2), Color(0xFFFF4891)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20)),
                          onPressed: () {},
                          splashColor: Colors.black,
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10),
                            width: 200,
                            child: Text(
                              'Sign In',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      // icon
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            child: FloatingActionButton(
                                mini: true,
                                child: Image(
                                  image: AssetImage('images/facebook.png'),
                                ),
                                onPressed: () {}),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            child: FloatingActionButton(
                                mini: true,
                                child: Image(
                                  image: AssetImage('images/twitter.png'),
                                ),
                                onPressed: () {}),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text('DON\'T HAVE AN ACCOUNT?  ',
                          style: TextStyle(color: Colors.grey)),
                    ),
                    Container(
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFFF4891)),
                          )),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
