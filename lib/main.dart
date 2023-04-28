import 'dart:js';

import 'package:flutter/material.dart';
import 'package:praa/Date_time/provider/date_time_provider.dart';
import 'package:praa/Date_time/view/date_view.dart';
import 'package:praa/drawer_steper/provider/stepprovider.dart';

import 'package:provider/provider.dart';

import 'drawer_steper/view/home_screen.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => stepprovider(),),
          ChangeNotifierProvider(create: (context) => dateprovider(),),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes:{
            'home':(context)=> Home_Screen(),
            '/':(context)=> Data_view(),
          },
        ),
      ));
}
