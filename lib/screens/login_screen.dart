import 'package:flutter/material.dart';
import 'package:footer/footer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SafeArea(
            child: Image(
              image: AssetImage('images/login.png'),
            ),
          ),
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  color: Color(0xFF282C3F),
                  width: 900,
                  height: 900,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    Center(
                      child: SizedBox(
                        width: 350,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Color(0xFFFF3F6C), // Background color
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          child: Text('Login'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Text(
                      'By enrolling you agree to ',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF94969F),
                      ),
                    ),
                    SizedBox(
                      height: 18.0,
                    ),
                    Text(
                      'Insider terms and conditions',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFFF3F6C),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
