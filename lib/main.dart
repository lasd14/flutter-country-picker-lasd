import 'package:flutter/material.dart';

import 'package:country_code_picker/country_code_picker.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String countryValue = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: const [
        Locale("af"),
        Locale("am"),
        Locale("ar"),
        Locale("az"),
        Locale("be"),
        Locale("bg"),
        Locale("bn"),
        Locale("bs"),
        Locale("ca"),
        Locale("cs"),
        Locale("da"),
        Locale("de"),
        Locale("el"),
        Locale("en"),
        Locale("es"),
        Locale("et"),
        Locale("fa"),
        Locale("fi"),
        Locale("fr"),
        Locale("gl"),
        Locale("ha"),
        Locale("he"),
        Locale("hi"),
        Locale("hr"),
        Locale("hu"),
        Locale("hy"),
        Locale("id"),
        Locale("is"),
        Locale("it"),
        Locale("ja"),
        Locale("ka"),
        Locale("kk"),
        Locale("km"),
        Locale("ko"),
        Locale("ku"),
        Locale("ky"),
        Locale("lt"),
        Locale("lv"),
        Locale("mk"),
        Locale("ml"),
        Locale("mn"),
        Locale("ms"),
        Locale("nb"),
        Locale("nl"),
        Locale("nn"),
        Locale("no"),
        Locale("pl"),
        Locale("ps"),
        Locale("pt"),
        Locale("ro"),
        Locale("ru"),
        Locale("sd"),
        Locale("sk"),
        Locale("sl"),
        Locale("so"),
        Locale("sq"),
        Locale("sr"),
        Locale("sv"),
        Locale("ta"),
        Locale("tg"),
        Locale("th"),
        Locale("tk"),
        Locale("tr"),
        Locale("tt"),
        Locale("uk"),
        Locale("ug"),
        Locale("ur"),
        Locale("uz"),
        Locale("vi"),
        Locale("zh")
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      title: 'Country Picker Medium',
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Country Picker Medium'),
        ),
        body: Center(
          child: Column(
            children: <Widget> [

              const Padding(
                padding: EdgeInsets.only(top: 25.0, bottom: 10.0),
                child: Text('What country are you from?', style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87
                ),),
              ),

              CountryCodePicker(
                onChanged: (code) {
                  setState(() {
                    countryValue = code.name.toString();
                    print(countryValue);
                  });
                },
                initialSelection: '+507',
                showFlagDialog: true,
                flagWidth: 60.0,
                flagDecoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white
                ),
                textStyle: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700, color: Colors.black87),
                onInit: (code) {
                  print('onInit ${code?.name}');
                },
              ),
              onTextCountry()
            ],
          ),
        ),
      ),
    );
  }

  Widget onTextCountry() {
    return Text('Your country is ${countryValue == '' ? 'not selected' : countryValue}', style: const TextStyle(
      color: Colors.black87,
      fontSize: 15.0,
      fontWeight: FontWeight.w600
    ),);
  }

}