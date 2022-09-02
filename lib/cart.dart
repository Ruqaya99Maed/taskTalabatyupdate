import 'package:flutter/material.dart';
class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {

      if (_counter>1) {
        _counter--;
      }else{
        _counter==1;
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Stack(
        children: [
          Container(

            height: double.infinity,
            width: double.infinity,
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Align(
                alignment: AlignmentDirectional.topCenter,
                child: Image.asset('images/png-transparent-hamburger-veggie-burger-chicken-sandwich-fast-food-hamburger-burger-burger-sandwich-'
                                     'food-recipe-cheeseburger-thumbnail-removebg-preview.png',
                    height: 200),
              ),
            ),
          ),

          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Container(
              width: double.infinity,

              height: MediaQuery.of(context).size.height *0.8,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,

                  children: [
                    _buildText(name: 'برجرات',
                        colorFont: Colors.red,
                        fontSize: 25),
                SizedBox(height: 20,),

               Row(
                 crossAxisAlignment: CrossAxisAlignment.end,
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Row(
                     children: [

                       _buildText(name: 'جيد جدآ',
                           colorFont: Colors.black,
                           fontSize: 20),
                       SizedBox(width: 10,),
                       SizedBox(
                           height: 25,
                           child: Image.network('https://thumbs.dreamstime.com/b/icon-smail-smiles-icon-vector-flat-design-best-96415385.jpg',fit: BoxFit.cover,)),

                     ],
                   ),
                   //------------
                   Row(
                     children: [

                       _buildText(name: 'سعر التوصيل : 0 د.ع',
                           colorFont: Colors.black,
                           fontSize: 20),
                       SizedBox(width: 10,),
                       Icon(Icons.bike_scooter),

                     ],
                   ),

                 ],
               ),

                    SizedBox(height: 20,),


               Row(
                 crossAxisAlignment: CrossAxisAlignment.end,
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Row(
                     children: [

                       _buildText(name: 'الحد الادنى للطلب 5,000 د.ع',
                           colorFont: Colors.black,
                           fontSize: 20),
                       SizedBox(width: 10,),
                       SizedBox(
                           height: 25,
                           child: Image.network('https://thumbs.dreamstime.com/b/icon-smail-smiles-icon-vector-flat-design-best-96415385.jpg',fit: BoxFit.cover,)),

                     ],
                   ),
                   //------------
                   Row(
                     children: [

                       _buildText(
                           name: 'الاعظمية',
                           colorFont: Colors.black,
                           fontSize: 20),
                       SizedBox(width: 10,),
                       Icon(Icons.location_on_outlined),

                     ],
                   ),

                 ],
               ),

                    SizedBox(height: 20,),
                    Row(
                      children: [

                        _buildText(name: 'وقت التوصيل المتوقع بين نصف ساعة الى ساعة و نصف',
                            colorFont: Colors.black,
                            fontSize: 18),
                        SizedBox(width: 10,),
                      Icon(Icons.timer_outlined,size: 30,)

                      ],
                    ),
                    SizedBox(height: 20,),
                    _buildText(name: 'سندويج فيليه الدجاج', colorFont: Colors.red, fontSize: 25),
                    SizedBox(height: 20,),

                    Container(
                      padding: EdgeInsets.all(8),
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Icon(Icons.keyboard_arrow_up,size: 40,),
                          Column(
                            children: [
                              _buildText(name: "اضافات", colorFont: Colors.red, fontSize: 25),
                              _buildText(name: "اختياري", colorFont: Colors.grey, fontSize: 20),
                            ],
                          ),


                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    _buildText(name: 'تعليمات خاصة', colorFont: Colors.black, fontSize: 25),
                    SizedBox(height: 5,),

                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(8),
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          _buildText(name: 'اذا كانت لديك اي ملاحضات تخص الطلب يرجى كتابتها هنا ',
                              colorFont: Colors.grey, fontSize: 15,
                          ),
                        ],
                      )
                    ),
                    SizedBox(height: 20,),



                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        CircleAvatar(
                          backgroundColor: Colors.grey.withOpacity(0.3),
                            radius: 30,

                            child: IconButton(onPressed: _incrementCounter, icon: Icon(Icons.add,color:Colors.black ,))),

                        SizedBox(width: 20,),
                        Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(child: _buildText(name: "$_counter", colorFont: Colors.black, fontSize: 20)),
                        ),

                        SizedBox(width: 20,),
                        CircleAvatar(
                            radius: 30,
                          backgroundColor: Colors.grey.withOpacity(0.3),

                            child: IconButton(onPressed: _decrementCounter,

                                icon: Icon(Icons.remove,color: Colors.black,))),



                      ],
                    ),

                    Center(child: _buildText(name: ' د.ع 6,500 ', colorFont: Colors.red, fontSize: 20)),

                    SizedBox(height: 20,),

                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(child: _buildText(name: 'اضافة الى السلة', colorFont: Colors.white, fontSize: 20)),
                    ),






                  ],
                ),
              ),
            ),
          )
        ],
      )
    );
  }

  Text _buildText({required String name,required Color colorFont ,required double fontSize}) {

    return Text(name,
      style: TextStyle(
          color:colorFont,
          fontSize: fontSize),);

  }
}
