import 'package:flutter/material.dart';
import 'package:login/services.dart';

class frgt extends StatefulWidget {
  const frgt({super.key});

  @override
  State<frgt> createState() => _frgtState();
}

class _frgtState extends State<frgt> {
  final formkey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(key: formkey,
        child: Center(
          child: Column(
            children: [
              Text(
                "Forgot Password",
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                "Reset Password",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: 400,
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
              SizedBox(height: 30),
              SizedBox(
                height: 50,
                width: 400,
                child: ElevatedButton(
                  onPressed: () {
                    if(formkey.currentState!.validate())
                    forgott(email: emailcontroller.text, context: context);},
                  child: Text("Send link"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    side: BorderSide(color: Colors.black),
                  ),
                ),
              ),],
          ),
        ),
      ),
    );
  }
}
