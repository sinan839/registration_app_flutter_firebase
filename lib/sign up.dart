import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:login/services.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final formkey = GlobalKey<FormState>();
  bool visible = false;
  bool vsbl = false;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(key: formkey,
        child: Column(
          children: [
            Center(
              child: Text(
                "Sign Up",
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Create an account,it's free",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 350,
              child: TextFormField(validator: (value) {
                if (value == null || value.isEmpty) {
                  return ("Name Required");
                }
                return ("null");
              },
                controller: namecontroller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 350,
              child: TextFormField(validator: (value){
                if(value==null||value.isEmpty)
                {
                  return("Email Required");
                }
                if(!value.contains("@"))
                {
                  return("invalid email");
                }
                return ("null");
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
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 350,
              child: TextFormField(validator: (value){
                if(value==null||value.isEmpty) {
                  return ("Password Required");
                }
                return ("null");
              },
                controller: passwordcontroller,
                obscureText: !visible,
                decoration: InputDecoration(suffixIcon: IconButton(
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
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 350,
              child: TextFormField(validator: (value){
                if(value!=passwordcontroller)
                {
                  return("Enter the same Password");
                }
                return ("null");
              },
                controller: confirmcontroller,
                obscureText: !vsbl,
                decoration: InputDecoration(suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      vsbl=!vsbl;
                    });
                  },
                  icon: vsbl
                      ? Icon(Icons.visibility)
                      : Icon(Icons.visibility_off),
                ),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Confirm Password",
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
              width: 350,
              child: ElevatedButton(
                onPressed: () {if(formkey.currentState!.validate()){
                  signupp(username: namecontroller.text,
                      email: emailcontroller.text,
                      password: passwordcontroller.text,
                      confirm: confirmcontroller.text,context: context);
                }},
                child: Text("Sign Up"),
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
                    "Already have an account?",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => login(),));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
