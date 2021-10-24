import 'package:flutter/material.dart';
import 'package:welcome/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background-1.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 80,
              child: Column(
                children: [
                  const Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'proxima',
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Example Login Sign-Up page',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'proxima',
                      color: Colors.grey.shade700,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.68),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    width: MediaQuery.of(context).size.width,
                    child: _loginButton(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _loginButton() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const LoginPage(),
          ),
        );
      },
      child: SizedBox(
        height: 40.0,
        child: Material(
          borderRadius: BorderRadius.circular(8.0),
          shadowColor: const Color.fromRGBO(79, 70, 229, 1),
          color: const Color.fromRGBO(79, 70, 229, 1.0),
          elevation: 7.0,
          child: const Center(
            child: Text(
              "Get Started",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'proxima',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
