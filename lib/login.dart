import 'package:flutter/material.dart';




class login extends StatelessWidget {
      login({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.green,
              Colors.green.shade800,
              Colors.green.shade400,
            ]),
          ),
          child: Column(
            children: [
              Container(
                height: 200,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "LogIn",
                      style: TextStyle(color: Colors.white, fontSize: 32),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Welcome Back",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(

                    children: [

                      SizedBox(
                        height: 50,
                      ),
                      TextField(
                        controller: _emailController,
                        style: TextStyle(fontSize: 10),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0), // تحديد تباعد الحواف الداخلية لحقل النص

                          hintText: "Email",
                          hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),

                          ),

                        ),

                      ),

                      TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0), // تحديد تباعد الحواف الداخلية لحقل النص

                          hintText: "Password",
                          hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                          border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10.0),
                          ),

                        ),


                      ),
                      SizedBox(
                        height: 40,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        height: 40,
                        minWidth: 200,
                        child: Text(
                          "Login",
                        ),
                        textColor: Colors.white,
                        color: Colors.green.shade700,
                        shape: StadiumBorder(),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Login with SNS",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            child: Text("Facebook"),
                            height: 40,
                            minWidth: 150,
                            shape: StadiumBorder(),
                            textColor: Colors.white,
                            color: Colors.blue,
                          ),
                          MaterialButton(
                            onPressed: () {},
                            shape: StadiumBorder(),
                            color: Colors.black,
                            textColor: Colors.white,
                            child: Text("Github"),
                            height: 40,
                            minWidth: 150,
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}