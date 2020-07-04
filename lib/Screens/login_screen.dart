import 'package:agri_flow/Screens/notification_screen.dart';
import 'package:agri_flow/Screens/report_screen.dart';
import 'package:agri_flow/Screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class LoginScreen extends StatefulWidget {
  final routeName = "LoginScreen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordVisible = false;
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  initState() {
    Hive.openBox('users');
    _passwordVisible = true;
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
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
                  "Daxil ol",
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
                    controller: usernameController,
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
                    controller: passwordController,
                    maxLines: 1,
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
                  onPressed: () {
                    if (userValidator(usernameController, passwordController))
                      Navigator.pushNamed(context, ReportScreen().routeName);
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        "Giriş",
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
                      Text("Hesabınız yoxdur?",
                          style: TextStyle(
                            color: Colors.redAccent,
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, SignUpScreen().routeName);
                        },
                        child: Text(
                          "Qeydiyyat",
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

  bool userValidator(
      TextEditingController userCont, TextEditingController passCont) {
    var box = Hive.box('users');

    var pval = box.get(userCont.text, defaultValue: "");
    if (pval == passCont.text) {
      return true;
    } else {
      passCont.clear();

      return false;
    }
  }
}
