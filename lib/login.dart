import 'package:flutter/material.dart';
import 'package:login/forgotpass.dart';
import 'package:login/services.dart';
import 'package:login/sign%20up.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final formkey = GlobalKey<FormState>();
  bool visible = false;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Center(
          child: Column(
            children: [
              Text(
                "Login",
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                "Login to your account",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: 400,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ("Email Required");
                    }
                    if (!value.contains("@")) {
                      return ("invalid email");
                    }
                    return "null";
                  },
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              SizedBox(
                height: 50,
                width: 400,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ("Password Required");
                    }
                    return null;
                  },
                  controller: passwordcontroller,
                  obscureText: !visible,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          visible=!visible;
                        });
                      },
                      icon: visible
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 50,
                width: 400,
                child: ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      loginn(
                        email: emailcontroller.text,
                        password: passwordcontroller.text,
                        context: context,
                      );
                    }
                  },
                  child: Text("Login"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    side: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont have an account?",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => signup()),
                        );
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => frgt()),
                        );
                      },
                      child: Text(
                        "Reset Password",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Image(
                image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUZKmoD95W6yIrICkkXzSixS_RufP25ZYp9w&s",
                ),
                height: 200,
                width: 400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
