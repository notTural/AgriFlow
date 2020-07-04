import 'package:flutter/material.dart';
import './login_screen.dart';

class SignUpScreen extends StatefulWidget {
  final routeName = "SignUpScreen";
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _passwordVisible = false;

  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 140, horizontal: 40),
          child: Center(
            child: Column(
              children: [
                Text(
                  "Qeydiyyat",
                  style: TextStyle(
                    fontSize: 55,
                    fontFamily: "Helvetica",
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  height: 50,
                  child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      hintText: "İstifadəçi adı",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 226, 230, 234),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 226, 230, 234),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  child: TextField(
                    maxLines: 1,
                    obscuringCharacter: "*",
                    obscureText: _passwordVisible,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      hintText: "Parol",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 226, 230, 234),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 226, 230, 234),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          // Update the state i.e. toogle the state of passwordVisible variable
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  elevation: 3,
                  color: Theme.of(context).primaryColor,
                  onPressed: () {},
                  child: Container(
                    child: Center(
                      child: Text(
                        "Qeydiyyat",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    width: 215,
                    height: 55,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Hesabınız var?"),
                      SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, LoginScreen().routeName);
                        },
                        child: Text(
                          "Daxil olun",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
