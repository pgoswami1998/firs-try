import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/login_images.png",
                  fit: BoxFit.cover, height: 250),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "welcome-$name",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "enter username",
                        labelText: "user name",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "enter password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                    InkWell(
                      onTap: () {
                        setState(() {
                          changebutton = true;
                        });
                        //Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds:1),
                        width: changebutton ? 50:150,
                        height: 50,
                        alignment: Alignment.center,
                        color: Colors.deepPurple,
                        child: changebutton?Icon(
                          Icons.done,
                          color:Colors.white,
                        )
                        : Text(
                          "login",
                          style: TextStyle(
                              color: Colors.white,
                              
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(changebutton ? 50 : 8)),
                      ),
                    )
                    //ElevatedButton(
                    //  child: Text("login"),
                    // style: TextButton.styleFrom(
                    //    minimumSize: Size(150, 40),
                    //  ),
                    //  onPressed: () {
                    //    Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //  },
                    //  )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
