import 'package:flutter/material.dart';
import 'package:insta_clone/Utility/firebaseAuth.dart';

class AuthenticationWidget extends StatefulWidget {
  const AuthenticationWidget({super.key});

  @override
  State<AuthenticationWidget> createState() => _AuthenticationWidgetState();
}

class _AuthenticationWidgetState extends State<AuthenticationWidget> {
  final _formkey = GlobalKey<FormState>();
  bool isLogin = false;
  String email = '';
  String password = '';
  String username = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Authentication")),
      body: Form(
        key: _formkey,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !isLogin
                  ? TextFormField(
                    key: ValueKey("User Name"),
                    decoration: InputDecoration(
                      hintText: "Enter Your UserName",
                    ),
                    validator: (value) {
                      if (value.toString().length < 3) {
                        return "User Name is So Small";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      setState(() {
                        username = value!;
                      });
                    },
                  )
                  : Container(),
              TextFormField(
                key: ValueKey('Email'),
                decoration: InputDecoration(hintText: "Enter Your Email"),
                validator: (value) {
                  if (!(value.toString().contains('@'))) {
                    return "Invalid Email Address";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    email = value!;
                  });
                },
              ),
              TextFormField(
                obscureText: true,
                key: ValueKey("Password"),
                decoration: InputDecoration(hintText: "Enter Your Password"),
                validator: (value) {
                  if (value.toString().length < 6) {
                    return "Password Should be 6";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    password = value!;
                  });
                },
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      _formkey.currentState!.save();
                      signup(email, password);
                    }
                  },
                  child: !isLogin ? Text("SignUp") : Text("Login"),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  setState(() {
                    isLogin = !isLogin;
                  });
                },
                child:
                    isLogin
                        ? Text("Dont Have an Account? SignUp")
                        : Text("Already Signed Up? Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
