import 'package:flutter/cupertino.dart';

import '../model/user_list_model.dart';
import '../services/api_status.dart';
import '../services/user_services.dart';

class UserViewModel extends ChangeNotifier{
  bool _loading =false;
  List<UserModel> _userListModel=[];
  bool get loading => _loading;
  List<UserModel> get userListModel =>_userListModel;



  // UserViewModel(){
  //   getUser();
  // }
   setLoading(bool loading)async{
     _loading=loading;
     notifyListeners();
   }
   setUserListModel(List<UserModel> userListModel)async{
     _userListModel=userListModel;
   }

   getUser()async{
     setLoading(true);
     var response= await UserServices.getUser();
     if(response is Success)
       {
         setUserListModel(response.response as List<UserModel>);
       }
     if(response is Failure)
       {
         UserError userError=UserError(code: response.code, message: response.errorResponse);

       }
     setLoading(false);
   }

}