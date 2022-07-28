import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _securePass = true;
  String? _email;
  String? _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.amber,
          child: Column(
            children: [
              // ignore: prefer_const_constructors
              SizedBox(
                height: 100,
              ),
              imgLogo(),
              userTxtbox(),
              const SizedBox(
                height: 10,
              ),
              passTxtbox(),
              const SizedBox(
                height: 35,
              ),
              singInBtn(),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 100,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Terms and Condition",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.black87,
                      fontSize: 20,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget imgLogo() {
    return Image.asset(
      'assets/images/LOGO.png',
      width: MediaQuery.of(context).size.width * 0.9,
      height: 150,
    );
  }

  userTxtbox() {
    return Padding(
      padding: const EdgeInsets.only(left: 57.0, right: 57),
      child: TextFormField(
        validator: (value) {
          if (value == "") {
            return "Fill the Blank";
          }
          return null;
        },
        cursorColor: Colors.black,
        onChanged: (value) => _email = value,
        decoration: const InputDecoration(
          suffixIcon: Icon(
            Icons.verified_user,
            color: Colors.black,
            size: 37,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 2.0,
              style: BorderStyle.solid,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 2.0,
              style: BorderStyle.solid,
            ),
          ),
          contentPadding: EdgeInsets.all(20),
          label: Text(
            "Username",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  void _secureText() {
    setState(() {
      _securePass = !_securePass;
    });
  }

  passTxtbox() {
    return Padding(
      padding: const EdgeInsets.only(left: 57.0, right: 57),
      child: TextFormField(
        onChanged: (value) => _password = value,
        validator: (value) {
          if (value == "") {
            return "Fill the Blank";
          }
          return null;
        },
        cursorColor: Colors.black,
        decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 2.0,
              style: BorderStyle.solid,
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 2.0,
              style: BorderStyle.solid,
            ),
          ),
          contentPadding: const EdgeInsets.all(20),
          label: const Text(
            "Password",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _securePass
                  ? Icons.remove_red_eye
                  : Icons.remove_red_eye_outlined,
              color: Colors.black,
              size: 37,
            ),
            onPressed: _secureText,
          ),
        ),
        obscureText: _securePass,
      ),
    );
  }

  singInBtn() {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.black,
        textStyle: const TextStyle(fontSize: 20, color: Colors.white),
        minimumSize: const Size(300, 65),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
      onPressed: () {},
      child: const Text(
        "SING IN",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
