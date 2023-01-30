import 'dart:io';

import 'package:http/http.dart' as http;

import '../../utils/constants.dart';
import '../model/user_list_model.dart';
import 'api_status.dart';
class UserServices{
 static Future<Object> getUser()async{
   try{
    var url=Uri.parse(USER_LIST_URL);
    var response = await http.get(url);
    if(response.statusCode==200)
      {
        return Success(response:userListModelFromJson(response.body), code: 200);
      }
    return Failure(errorResponse: 'invalid Response', code: 100);
   } on HttpException {
     return Failure(errorResponse: 'no internet', code: 101);
   } on FormatException{
     return Failure(errorResponse: 'Format Issue', code: 102);
   }
   catch(e){
     return Failure(errorResponse: 'Unknown', code: 103);
   }
 }
}