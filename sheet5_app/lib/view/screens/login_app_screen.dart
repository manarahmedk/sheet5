import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sheet5_app/view/components/logo.dart';
import 'package:sheet5_app/view/screens/sign_up.dart';

import 'login.dart';

class LoginAppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              'Welcome',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Please login or sign up to continue using our app',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.network(
                'https://media.licdn.com/dms/image/D5612AQEk_dWTQchdog/article-cover_image-shrink_720_1280/0/1678701101167?e=2147483647&v=beta&t=3wpOzH4tPudAfGcKqa-RrFbiRfLUXO8Zf2slOxTaOBQ',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Enter via social networks',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Logo(0xff26a7de,
                    'https://seeklogo.com/images/T/twitter-2012-negative-logo-5C6C1F1521-seeklogo.com.png'),
                Logo(0xff3b5998,
                    'https://upload.wikimedia.org/wikipedia/commons/c/cd/Facebook_logo_%28square%29.png'),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'or login with email',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 350,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpScreen(),
                    ),
                  );
                },
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all(Colors.indigoAccent),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account ?  ',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.blue,
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
