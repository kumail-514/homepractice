import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Center(
         child: Text("WOMEN", style: GoogleFonts.merriweather(
           fontWeight: FontWeight.bold,
           fontSize: 20,
         )),
       ),
       leading: IconButton(
         icon: Icon(Icons.arrow_back_ios_outlined), onPressed: (){
     },
),
     actions: [
       Icon(Icons.tune_outlined),
     SizedBox(width: 10,)],
     ),

      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: ElevatedButton(onPressed: (){},
                        child: Text("Best Seller" , style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500),)),
                  ),

                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: ElevatedButton(onPressed: (){},
                        child: Text("Best Seller" , style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500),)),
                  ),

                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: ElevatedButton(onPressed: (){},
                        child: Text("Best Seller" , style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500),)),
                  ),

                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: ElevatedButton(onPressed: (){},
                        child: Text("Best Seller" , style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500),)),
                  )
                ],

              )
            ],
          ),

        ),
      ),
    );
  }
}

