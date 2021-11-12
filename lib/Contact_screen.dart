import 'package:flutter/material.dart';

import 'ContactItem.dart';

class homescreen extends StatefulWidget {
  static const RouteName = 'homeScreen';

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  bool Visblite = false;
  int numberof_item = 0;
  Contact_Item item1 = Contact_Item();
  Contact_Item item2 = Contact_Item();
  Contact_Item item3 = Contact_Item();
  TextEditingController NameTextFilled = TextEditingController();
  TextEditingController PhoneTextFilled = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(child: Text('contacts Screen')),
      ),
      body: Container(
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                TextField(
                    controller: NameTextFilled,
                    decoration: InputDecoration(
                      hintText: 'enter your name',
                      suffixIcon: Icon(Icons.drive_file_rename_outline,color: Colors.blue,),
                      helperStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                TextField(
                    controller: PhoneTextFilled,
                    decoration: InputDecoration(
                      hintText: 'enter your phone',
                      suffixIcon: Icon(Icons.phone,color: Colors.blue,),
                      helperStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                    )),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                          onPressed: onAddcontect,
                          child: Text('add',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black,
                              )),
                        )),

                  ],
                ),
                item1,
                item2,
                item3,
              ],
            ),
          )),
    );
  }

  void onAddcontect() {
    if (numberof_item == 0) {
      item1 = Contact_Item(
        Visiblty: true,
        Name: NameTextFilled.text,
        Phone: PhoneTextFilled.text,
        icondeleteitempres:icondeleteitempres,
        num: 1,
      );
      numberof_item++;
      setState(() {});
    } else if (numberof_item == 1) {
      item2 =  Contact_Item(
        Visiblty: true,
        Name: NameTextFilled.text,
        Phone: PhoneTextFilled.text,
        icondeleteitempres:icondeleteitempres,
        num: 2,
      );
      numberof_item++;
      setState(() {});
    } else if (numberof_item == 2) {
      item3 =  Contact_Item(
        Visiblty: true,
        Name: NameTextFilled.text,
        Phone: PhoneTextFilled.text,
        icondeleteitempres:icondeleteitempres,
        num: 3,
      );
      numberof_item++;
      setState(() {});
    }
  }

  void icondeleteitempres(int num)
  {
    if(num==1){
      item1=Contact_Item();
    }else if(num==2){
      item2=Contact_Item();
    }
    else if(num==3)
    {
      item3=Contact_Item();
    }
    setState(() {

    });
  }
}