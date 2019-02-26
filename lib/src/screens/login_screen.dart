import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            SizedBox(
              height: 28.0,
            ),
            submitButton(),
          ],
        ));
  }

  Widget emailField() {
    return StreamBuilder(
        stream: bloc.email,
        builder: (context, snapshot) {
          TextField(
            onChanged: bloc.changeEmail,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'you@example.com',
              labelText: 'Email Adress',
              errorText: snapshot.error,
            ),
          );
        });
  }

  Widget passwordField() {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        TextField(
          onChanged: bloc.changePassword,
          obscureText: true, //no deja q se vea el texto digitado
          decoration:
              InputDecoration(
                hintText: 'Password', 
                labelText: 'Password',
                errorText: snapshot.error,
                ),
        );
      },
    );
  }

  Widget submitButton() {
    return RaisedButton(
      child: Text(
        'Login',
        style: TextStyle(color: Colors.white),
      ),
      color: Colors.lightBlue,
      onPressed: () {},
    );
  }
}
