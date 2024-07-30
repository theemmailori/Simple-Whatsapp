import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:whatsapp_flutter/whatsapp_home.dart';

late List<CameraDescription> cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    cameras = await availableCameras();
  } catch (e) {
    cameras = [];
    print('Error fetching cameras: $e');
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp',
      theme: ThemeData(
        primaryColor:
            Color(0xff075E54), // Primary color for AppBar and other elements
        hintColor: Color(0xff25D366), // Hint color for input fields
        appBarTheme: AppBarTheme(
          backgroundColor:
              Color(0xff075E54), // Ensure AppBar uses primary color
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color(0xff075E54), // Ensure FAB uses primary color
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: WhatsappHome(cameras: cameras),
    );
  }
}
