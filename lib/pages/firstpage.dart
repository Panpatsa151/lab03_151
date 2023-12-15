import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final _loginFormkey = GlobalKey<FormState>();
  final TextEditingController _usernameCtrl = TextEditingController();
  final TextEditingController _passwordCtrl = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 126, 213, 228),
      appBar: AppBar(
        title: Text("Panpatsa App"),
        backgroundColor: Color.fromARGB(255, 10, 133, 233),
      ),
      body: Form(
        key: _loginFormkey,
        child: Column(
          children: [
            SizedBox(height: 16),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter your Username";
                }
                return null;
              },
              controller: _usernameCtrl,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  labelText: "Username",
                  prefixIcon: Icon(Icons.person),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 18, 22, 0))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 58, 183, 64)))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your Password";
                  }
                  return null;
                },
                obscureText: true,
                obscuringCharacter: "*",
                controller: _passwordCtrl,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.key),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 18, 22, 0))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 58, 183, 64)))),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  print("onPressed");
                  if (_loginFormkey.currentState!.validate()) {
                    print("Successful");
                  }
                },
                child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
