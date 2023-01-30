class Success{
  int code;
  Object response;
  Success({required this.code,required this.response});
}

class Failure{
  int code;
  Object errorResponse;
  Failure({required this.code,required this.errorResponse});
}

class UserError{
  int code;
  Object message;
  UserError({required this.code,required this.message});
}