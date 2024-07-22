import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_system_abs/features/home/peresentation/view/home_view.dart';
import 'package:school_system_abs/features/home/peresentation/view_model/change_pages_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
    
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(create: (BuildContext context) { return ChangePagesProvider();},
      child: const HomeView()),
    );
  }
}
