import 'package:flutter/material.dart';

import 'login_presenter.dart';

class LoginPage extends StatelessWidget {
  final LoginPresenter presenter;

  LoginPage(this.presenter);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 240,
              margin: EdgeInsets.only(bottom: 32),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Theme.of(context).primaryColorLight,
                      Theme.of(context).primaryColorDark,
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                      blurRadius: 4,
                      color: Colors.black,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                  )),
              child: Image(
                image: AssetImage('lib/ui/assets/logo.png'),
              ),
            ),
            Text('Login'.toUpperCase(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Form(
                child: Column(
                  children: [
                    StreamBuilder<String>(
                        stream: presenter.emailErrorStream,
                        builder: (context, snapshot) {
                          return TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                              icon: Icon(
                                Icons.email,
                                color: Theme.of(context).primaryColor,
                              ),
                              errorText: snapshot.data?.isEmpty == true
                                  ? null
                                  : snapshot.data,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            onChanged: presenter.validateEmail,
                          );
                        }),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 32),
                      child: StreamBuilder<String>(
                          stream: presenter.passwordErrorStream,
                          builder: (context, snapshot) {
                            return TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Password',
                                icon: Icon(Icons.lock),
                                errorText: snapshot.data?.isEmpty == true
                                    ? null
                                    : snapshot.data,
                              ),
                              obscureText: true,
                              onChanged: presenter.validatePassword,
                            );
                          }),
                    ),
                    StreamBuilder<bool>(
                        stream: presenter.isFormValidStream,
                        builder: (context, snapshot) {
                          return ElevatedButton(
                            onPressed: snapshot.data == true ? () {} : null,
                            child: Text('Enter'.toUpperCase()),
                          );
                        }),
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.person),
                      label: Text('Create Account'),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
