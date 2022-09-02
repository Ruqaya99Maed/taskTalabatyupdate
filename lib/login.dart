import 'package:dna3/home_page.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool iconCond = true;

 // @override
 // void setState(VoidCallback fn) {


  //   super.setState(fn);
  //   _button();
  // }

   Widget _button(){
   return IconButton(
        onPressed: () {
setState((){
  iconCond = !iconCond;
});



        },
        icon: iconCond
            ? Icon(
          Icons.arrow_left,
          color: Colors.red,
          size: 20,
        )
            : Icon(
          Icons.arrow_drop_down,
          color: Colors.red,
          size: 20,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              "https://www.talabatey.com/img/T.png",
              width: 200,
              height: 100,
            ),
            SizedBox(
              height: 70,
            ),
            textField(text: "الاسم", prefix: '0/15'),
            SizedBox(height: 30),
            textField(text: 'رقم الهاتف', prefix: "0/11"),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 10,
                  ),

                _button(),



                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "اذا كان لديك رمز مشاركة.إضغط هنا",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),

            ),
            iconCond?Container(): textField(prefix: "", text: "رمز المشاركة"),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              child: Container(
                  width: 320,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffbeb1b1),
                        blurRadius: 0.1,
                        offset: Offset(2, 2), // Shadow position
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text("التالي",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        )),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  // Widget box({required String name, required String number}) {
  //   return Container(
  //     height: MediaQuery.of(context).size.height * 0.07,
  //     width: 360,
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(15),
  //       color: Color(0xffefecec),
  //     ),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         Padding(
  //           padding: const EdgeInsets.only(left: 18, top: 15),
  //           child: Text(
  //             number,
  //             style: TextStyle(
  //               color: Colors.red,
  //               fontSize: 13,
  //               fontWeight: FontWeight.w500,
  //             ),
  //           ),
  //         ),
  //         Padding(
  //           padding: EdgeInsets.only(
  //             right: 20,
  //           ),
  //           child: Text(
  //             name,
  //             style: TextStyle(
  //               fontWeight: FontWeight.bold,
  //               color: Color(0xffbcb6b6),
  //               fontSize: 18,
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget textField({required String prefix, required String text}) {
    return TextField(
      cursorColor: Colors.red,
      textAlign: TextAlign.end,
      decoration: InputDecoration(
          prefixText: prefix,
          prefixStyle: TextStyle(color: Colors.red),
          hintText: text,
          contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
          filled: true,
          fillColor: Color(0xffefecec),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Colors.red,
                style: BorderStyle.solid,
              ))),
    );
  }
}
