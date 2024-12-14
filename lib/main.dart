import 'package:flutter/material.dart';

// When the play button is pressed, it calls the main function
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // The Class name must match the const name specified
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonname = 'Click';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Scaffold is like the main container or page, the white background when you have nothing else on the page
      home: Scaffold(
        // Small letters are the arguments and the Widgets begin with Capital letters
        appBar: AppBar(
          title: const Text(
              'App Title'), // Use const for Text widget, since it's a compile-time constant
        ),
        body: Center(
            child: SizedBox(
              width: double.infinity,// To get the full width of the device since we donot know how big it will be,
              height: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          buttonname = 'Clicked';
                        });
                      },
                      child: Text(buttonname)),
                  ElevatedButton(
                    // To style a button you use widgetName.stylefrom()
                    style: ElevatedButton.styleFrom(
                      onPrimary:const Color.fromARGB(102, 158, 158, 158), 
                      backgroundColor: Colors.deepOrangeAccent // background color of button 
                    ),
                      onPressed: () {
                        setState(() {
                          buttonname = 'Clicked';
                        });
                      },
                      child: Text(buttonname))
                ],
              ),
            )),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings')
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
