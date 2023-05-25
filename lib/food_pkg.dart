
library food_pkg;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


/// A Food App.
// typedef ResponseCallBack=void Function(String balence);
// typedef TapCallBack= Future<String> Function(ResponseCallBack balence);


class MenuFood{
  String? name;
  String? image;
  MenuFood({this.name, this.image});
}

class Information{
  String? name;
  String? rating;
  Information({this.name, this.rating});
}
class Food extends StatelessWidget {
  final List<Information> information;
  Food({Key? key, required this.information}) :super(key: key);
  TextEditingController searchController = TextEditingController();
  final List<MenuFood> menuData = [
    MenuFood(name: 'Burger', image: "assets/images/burg.png"),
    MenuFood(name: 'Pizza', image: "assets/images/pizza.png"),
    MenuFood(name: 'Soup', image: "assets/images/soup.png"),
    MenuFood(name: 'Roll', image: "assets/images/roll.png"),
  ];
  final List<MenuFood> data = [
    MenuFood(image: "assets/images/burger.png"),
    MenuFood(image: "assets/images/burger.png"),
  ];
  int i = 1;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Navigator.pop(context,searchController.text);
        return false;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: const Color(0xffFDF8FF),
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/images/menu.png',package: 'calculate_pkg',),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Text(
                      'Find Your',
                      style: GoogleFonts.poppins(textStyle: const TextStyle(color: Colors.grey, fontSize: 16)),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Text(
                      'Favorite Food',
                      style: GoogleFonts.poppins(textStyle: const TextStyle(color: Colors.black, fontSize: 36,fontWeight: FontWeight.bold),),

                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(30, 3, 20, 0),
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xffDBDBDB)
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.black,
                      controller: searchController,
                      textInputAction: TextInputAction.search,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                          color: Colors.grey,
                        ),
                        hintText: 'Search here',
                        hintStyle: GoogleFonts.poppins(textStyle:const TextStyle(color: Color(0xffDBDBDB)) ) ,
                      ),
                      style: const TextStyle(color: Colors.black),
                    )),
                const SizedBox(height: 20),
                Container(
                    width: double.infinity,
                    height: 153,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: const Color(0xffDBDBDB)
                        ),
                        borderRadius: BorderRadius.circular(22)),
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: menuData.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width/4,
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(child: Image.asset(menuData[index].image??"",package: 'calculate_pkg')),
                                const SizedBox(
                                  height: 13,
                                ),
                                Center(
                                  child: Text(
                                    menuData[index].name??'',
                                    style:GoogleFonts.poppins(textStyle: const TextStyle(
                                      color: Colors.black,
                                    )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Center(
                                  child: Text(
                                    '|',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: index==0?const Color(0xff00B8D9):Colors.black,
                                    ),),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Center(
                                  child: Text(
                                      '15',
                                      style:GoogleFonts.poppins(textStyle: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),)),
                                ),
                              ],
                            ),
                          );
                        })),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: SizedBox(
                    width: double.infinity,
                    height: 290,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: data.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 200,
                            height: 290,
                            padding: const EdgeInsets.all(16),
                            margin:const EdgeInsets.only(right: 20) ,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xffDBDBDB)
                                ),
                                color: index==0?const Color(0xff690090):Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(child: Image.asset(data[index].image??"",package: 'calculate_pkg')),
                                const SizedBox(
                                  height: 23,
                                ),
                                Text('${information[index].name}',
                                    style:GoogleFonts.poppins(textStyle: TextStyle(color:  index==0?Colors.white:Colors.black,fontWeight: FontWeight.bold,fontSize: 16))),
                                const SizedBox(
                                  height: 13,
                                ),
                                Row(
                                  children:  [
                                    const Icon(Icons.star,color: Color(0xff00B8D9),size: 15,),
                                    const SizedBox(width: 10,),
                                    Text('${information[index].rating} - 20 mins',
                                        style:GoogleFonts.poppins(textStyle: TextStyle(color: index==0?Colors.white:Colors.black,fontWeight: FontWeight.bold,fontSize: 10))),
                                  ],
                                )

                              ],
                            ),
                          );
                        }),
                  ),
                )
              ],
            )),
      ),
    );
  }
}




