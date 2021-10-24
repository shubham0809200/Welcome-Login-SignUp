// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:welcome/sign_up_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePageLogin(),
    );
  }
}

class MyHomePageLogin extends StatefulWidget {
  const MyHomePageLogin({Key? key}) : super(key: key);

  @override
  _MyHomePageLoginState createState() => _MyHomePageLoginState();
}

class _MyHomePageLoginState extends State<MyHomePageLogin> {
  final _scaffoldkey = GlobalKey<ScaffoldState>();
  final bool _loading = false;
  final _formKey = GlobalKey<FormState>();
  String _email = '', _password = '';
  bool _obscuretext = true;

  Widget _welcomeTitle() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 2,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background-1.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 20,
                top: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Track your',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'proxima',
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'project.',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'proxima',
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Get live updates',
                      style: TextStyle(
                        fontFamily: 'proxima',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _emailbox() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: TextFormField(
        onSaved: (val) => _email = val!,
        validator: (val) =>
            RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                    .hasMatch(val!)
                ? null
                : 'Invalid Email',
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            child: const Icon(Icons.check),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          labelText: "  Email",
          labelStyle: const TextStyle(
            fontFamily: 'proxima',
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  Widget _passwordbox() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: TextFormField(
        onSaved: (val) => _password = val!,
        obscureText: _obscuretext,
        validator: (val) =>
            val!.length < 6 ? "Minimum password length is 6 " : null,
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() => _obscuretext = !_obscuretext);
            },
            child: Icon(_obscuretext ? Icons.visibility : Icons.visibility_off),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          labelText: "  Password",
          // icon: Icon(
          //   Icons.lock,
          //   color: Colors.grey,
          // ),
          labelStyle: const TextStyle(
            fontFamily: 'proxima',
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  Widget _forgetPasword() {
    return Container(
      alignment: const Alignment(1.0, 0.0),
      padding: const EdgeInsets.only(top: 15.0, left: 90.0),
      child: InkWell(
        onTap: () {},
        child: const Text(
          "Forgot Password",
          style: TextStyle(
            color: Color.fromRGBO(79, 70, 229, 1),
            fontWeight: FontWeight.bold,
            fontFamily: 'proxima',
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }

  Widget _loginButton() {
    return Column(
      children: [
        _loading == true
            ? const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(
                  Color.fromRGBO(79, 70, 229, 1),
                ),
              )
            : GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(8.0),
                    shadowColor: const Color.fromRGBO(79, 70, 229, 1),
                    color: const Color.fromRGBO(79, 70, 229, 1),
                    elevation: 7.0,
                    child: const Center(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'proxima',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
      ],
    );
  }

  Widget _signUp() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: const Color.fromRGBO(79, 70, 229, 1),
        ),
      ),
      child: Column(
        children: [
          _loading == true
              ? const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(
                    Color.fromRGBO(79, 70, 229, 1),
                  ),
                )
              : GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const SignUpPage(),
                      ),
                    );
                  },
                  child: SizedBox(
                    height: 40.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(8.0),
                      shadowColor: const Color.fromRGBO(79, 70, 229, 1),
                      // color: const Color.fromRGBO(79, 70, 229, 1),
                      elevation: 7.0,
                      child: const Center(
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                            color: Color.fromRGBO(79, 70, 229, 1),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'proxima',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }

  // Main Part Widget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: const BoxConstraints(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _welcomeTitle(),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 20.0),
                child: Text(
                  ' Log in',
                  style: TextStyle(
                    fontFamily: 'proxima',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Form(
                key: _formKey,
                child: Container(
                  padding:
                      const EdgeInsets.only(top: 8.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: <Widget>[
                      _emailbox(),
                      _passwordbox(),
                      _forgetPasword(),
                      const SizedBox(height: 30.0),
                      _loginButton(),
                      const SizedBox(height: 10.0),
                      _signUp(),
                      const SizedBox(height: 30.0),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 35.0),
            ],
          ),
        ),
      ),
    );
  }
}
