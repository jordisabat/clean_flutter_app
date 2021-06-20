import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image(
                image: AssetImage('lib/ui/assets/logo.png'),
              ),
            ),
            Text('Login'.toUpperCase()),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      icon: Icon(Icons.email),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      icon: Icon(Icons.lock),
                    ),
                    obscureText: true,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Enter'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Create an Account'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
