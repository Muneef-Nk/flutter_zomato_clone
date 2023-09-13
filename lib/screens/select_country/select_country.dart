import 'package:flutter/material.dart';

import '../../model/select_country.dart';

class SelectCountry extends StatelessWidget {
  const SelectCountry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed:(){
          Navigator.of(context).pop();
        }, color: Colors.black, icon: Icon(Icons.arrow_back ),),
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(45),
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            height:40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffefefef)
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search by country name....',
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search, color: Color(0xff5d5d64),)
              ),
            ),
          ),
        ),
      ),
      body: ListView.separated
        (itemBuilder: (context, index){
          return ListTile(
            leading: Container(
                width: 40,
                height: 30,
                child: Image.network( countryCodes[index].flag, fit: BoxFit.cover,)),
            title: Text(countryCodes[index].name),
            trailing: Text(countryCodes[index].code),
          );
      },
          separatorBuilder: (context, index){
          return Divider(thickness: 1,);
          },
          itemCount: countryCodes.length
      ),
    );
  }
}
