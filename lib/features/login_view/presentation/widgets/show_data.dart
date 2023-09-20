import 'package:flutter/material.dart';

class ShowData extends StatelessWidget {
 const ShowData({Key? key, required this.name, required this.phoneNumber, required this.mosma_wazefy_name, required this.id, required this.emp_code, required this.emp_img}) : super(key: key);
final String name,phoneNumber,mosma_wazefy_name,id,emp_code,emp_img;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title:const Text( 'Informations')),
        body: Padding(
            padding:  const EdgeInsets.all(8.0),
            child:Column(
              children: [
                CircleAvatar(
                  radius: 90,
                    child: Image.network(emp_img)),
                const SizedBox(height: 20,),
                Align(
                    alignment:Alignment.topRight ,
                    child: Text(' الاسم :  $name',style:  const TextStyle(color: Colors.black,fontSize: 23),)),
                const SizedBox(height: 10,),
                Align(
                    alignment:Alignment.topRight ,
                    child: Text(' رقم الهاتف  :  $phoneNumber',style:  const TextStyle(color: Colors.black,fontSize: 23),)),
                const SizedBox(height: 10,),
                Align(
                    alignment:Alignment.topRight ,
                    child: Text('المسمي الوظيفي  :  $mosma_wazefy_name',style:  const TextStyle(color: Colors.black,fontSize: 23),)),
                const SizedBox(height: 10,),
                Align(
                    alignment:Alignment.topRight ,
                    child: Text('لرقم السري   :   $id',style:  const TextStyle(color: Colors.black,fontSize: 23),)),
                const SizedBox(height: 10,),
                Align(
                    alignment:Alignment.topRight ,
                    child: Text(' كود الموظف   :   $emp_code',style:  const TextStyle(color: Colors.black,fontSize: 23),)),
              ],
            )

        ),
    );
  }
}
