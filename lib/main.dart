import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/delivery_traker_page.dart';
import 'models/delivery_listview_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
          create: (context) => DeliveryStateListViewModel(),
          child: DeliveryTrackerPage()),
    );
  }
}
