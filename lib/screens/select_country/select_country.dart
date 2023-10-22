import 'package:country_code_picker/country_code_picker.dart';
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // CountryCodePicker(
            //   onChanged: print,
            //   // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
            //   initialSelection: 'IT',
            //   favorite: const ['+39', 'FR'],
            //   countryFilter: const ['IT', 'FR'],
            //   showFlagDialog: false,
            //   comparator: (a, b) => b.name.compareTo(a.name),
            //   //Get the country information relevant to the initial selection
            //   onInit: (code) => debugPrint(
            //       "on init ${code.name} ${code.dialCode} ${code.name}"),
            // ),
            CountryCodePicker(
              onChanged: print,
              // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
              initialSelection: 'IT',
              favorite: const ['+39', 'FR'],
              countryFilter: const ['IT', 'FR'],
              // flag can be styled with BoxDecoration's `borderRadius` and `shape` fields
              flagDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
              ),
            ),
            const SizedBox(
              width: 400,
              height: 60,
              child: CountryCodePicker(
                onChanged: print,
                hideMainText: true,
                showFlagMain: true,
                showFlag: false,
                initialSelection: 'TF',
                hideSearch: true,
                showCountryOnly: true,
                showOnlyCountryWhenClosed: true,
                alignLeft: true,
              ),
            ),
            SizedBox(
              width: 400,
              height: 60,
              child: CountryCodePicker(
                onChanged: (element) => debugPrint(element.toLongString()),
                initialSelection: 'TF',
                showCountryOnly: true,
                showOnlyCountryWhenClosed: true,
                favorite: const ['+39', 'FR'],
              ),
            ),
            SizedBox(
              width: 100,
              height: 60,
              child: CountryCodePicker(
                enabled: false,
                onChanged: (c) => c.name,
                initialSelection: 'TF',
                showCountryOnly: true,
                showOnlyCountryWhenClosed: true,
                favorite: const ['+39', 'FR'],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
