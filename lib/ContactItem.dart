
import 'package:flutter/material.dart';

class Contact_Item extends StatelessWidget {
  String Name;
  String Phone;
  bool Visiblty ;
  Function ?icondeleteitempres;
  late  int num;
  Contact_Item({this.Name='', this.Phone='' , this.Visiblty=false,this.icondeleteitempres,this.num=0});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible:Visiblty,
      child: Container(
        padding: EdgeInsets.all(14),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
        ),
        margin: EdgeInsets.all(15),


        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('name :$Name',style: TextStyle(
                    fontSize: 18
                ),),
                IconButton(onPressed: (){
                  if(icondeleteitempres==null)return;
                  icondeleteitempres!(num);
                }, icon:Icon(Icons.delete))
              ],
            ),
            Text('phone : $Phone',style: TextStyle(
                fontSize: 18
            ),),
          ],
        ),


      ),
    );
  }
}