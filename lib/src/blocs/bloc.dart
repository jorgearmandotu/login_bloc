import 'dart:async';
import './validators.dart';

class  Bloc with Validators{
  final _emailController = StreamController<String>.broadcast();
  final _passwordController = StreamController<String>.broadcast();

  //add data to stream
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  //retrieve data fron stream

  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password => _passwordController.stream.transform(validatePassword);

  void dispose(){
    _emailController.close();
    _passwordController.close();
  }
}

final bloc =Bloc();