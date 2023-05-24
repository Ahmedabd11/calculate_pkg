// @dart=2.9
library food_pkg;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '';
import 'App/users_list/view_model/user_view_model.dart';
/// A Food App.
// typedef ResponseCallBack=void Function(String balence);
// typedef TapCallBack= Future<String> Function(ResponseCallBack balence);
class Food extends StatelessWidget {
  final Information information;
  const Food({Key key, this.information}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_)=> UserViewModel())],
      child: FoodWidget(information: information,),
    );
  }
}

class FoodWidget extends StatefulWidget {
  final Function balanceCallBack;
  final Information information;
  const FoodWidget({Key key, this.information,this.balanceCallBack}) : super(key: key);

  @override
  State<FoodWidget> createState() => _FoodWidgetState();
}

class Information{
  String name;
  String number;
  Information({this.name, this.number});
}
class MenuFood{
  String name;
  Icon icon;
  MenuFood({this.name, this.icon});
}

class _FoodWidgetState extends State<FoodWidget> {
  String enteredText = '';
  TextEditingController emailController=TextEditingController();
  String superText='';
  String operator = '';
  double result = 0;
  final List<MenuFood> data = [
    MenuFood(name: 'Burger',icon:const Icon(Icons.fastfood) ),
    MenuFood(name: 'Juice',icon:const Icon(Icons.emoji_food_beverage) )
  ];
  int i = 1;

  @override
  Widget build(BuildContext context) {
    UserViewModel userViewModel=context.watch<UserViewModel>();
    return Scaffold(
      backgroundColor: const Color(0xff22252D),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
           const Text('Find Your',style: TextStyle(color: Colors.grey,fontSize: 16),),
            const SizedBox(height: 10),
            const Text('Favorite Food',style: TextStyle(color: Colors.black,fontSize: 36),),
            const SizedBox(height: 20),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(30, 3, 20, 0),
            margin: EdgeInsets.only(left: 10, right: 10),
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              cursorColor: Colors.black,
              controller: emailController,
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.email_outlined),
                  color: Colors.grey,
                ),
                hintText: 'Correo Electrónico',
                hintStyle: TextStyle(color: Colors.black),
              ),
              style: TextStyle(color: Colors.black),
            )),
            const SizedBox(height: 20),
            SizedBox(
            width: 327,
            height: 153,
            child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: data.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 24,
                            height: 23,
                            child: data[index].icon),
                        const SizedBox(
                          height: 13,
                        ),
                        Text(
                          data[index].name,
                          style: const TextStyle(color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  );
                })),
            const SizedBox(height: 50),
             SizedBox(
               width: 327,
               height: 400,
               child:GridView.builder(
                   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                       maxCrossAxisExtent: 200,
                       childAspectRatio: 0.9,
                       crossAxisSpacing: 20,
                       mainAxisSpacing: 20),
                   itemCount: data.length,
                   itemBuilder: (BuildContext ctx, index) {
                     return Container(
                       width: 155.5,
                       height: 165,
                       padding: EdgeInsets.all(16),
                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(12)),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container(
                               width: 124,
                               height: 123,
                               child: data[index].icon),
                           SizedBox(
                             height: 13,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text(
                                 data[index].name,
                                 style:TextStyle(color: Colors.black)
                               ),
                             ],
                           ),
                         ],
                       ),
                     );
                   }),


             )

          ],
        )
      ),
    );
  }
}
