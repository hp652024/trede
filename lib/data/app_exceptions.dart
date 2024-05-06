class AppExceptions implements Exception {

  final _massage;
  final _prefix;
  AppExceptions([this._prefix,this._massage]);

  String toString(){
    return '$_massage$_prefix';
  }
}
class FetchDataException extends AppExceptions{
  FetchDataException([String? message]): super( message ,'Error During Communication');
}
class BadRequestException extends AppExceptions{
  BadRequestException([String? message]): super( message ,'Invalid request');
}
class UnauthorisedException extends AppExceptions{
  UnauthorisedException([String? message]): super( message ,'Unauthorised request');
}
class InvalidInputException extends AppExceptions{
  InvalidInputException([String? message]): super( message ,'Invalid Input');
}