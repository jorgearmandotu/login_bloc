import 'dart:async';

class Validators {
  final validateEmail =StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink){
      if(email.contains('@')){
        sink.add(email);
      }else{
        sink.addError('Email Invalido');
      }
    }
  );

  final validatePassword =StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink){
      if(password.length > 3){
        sink.add(password);
      }else{
        sink.addError('Password debe ser de almenos 4 caracteres');
      }
    }
  );
}