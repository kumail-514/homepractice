import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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

  List names = ["Popular", "Best Sell", "Kumail", "Hammad", "Hassan"];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),

          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "Categories",
            icon: Icon(Icons.shopping_cart),
          ),
          BottomNavigationBarItem(
            label: "My Account",
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
     appBar: AppBar(
       title: Center(
         child: Text("WOMEN", style: GoogleFonts.merriweather(
           fontWeight: FontWeight.bold,
           fontSize: 20,
         )),
       ),
       leading: IconButton(
         icon: const Icon(Icons.arrow_back_ios_outlined), onPressed: (){
     },
),
     actions: [
       const Icon(Icons.tune_outlined),
     const SizedBox(width: 10,)],
     ),

      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ListView.builder(
                itemCount: names.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const ScrollPhysics(),
                itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 60,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: currentIndex == index ? Border.all(color: Colors.black) : null,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Text(names[index] , style: currentIndex == index ? const TextStyle(color: Colors.black87, fontWeight: FontWeight.w500): TextStyle(color: Colors.grey.shade500, fontWeight: FontWeight.w200),),
                  ),
                );
              },)
            ),
        
            SizedBox(height: 40,),
        
             Container(
               margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
               child: GridView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                   itemCount: 10,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 2,
                     crossAxisSpacing: 8,
                     mainAxisSpacing: 10,
                     mainAxisExtent: 190,
                   ),
                   itemBuilder: (context, index) {
                     return  Container(
                      width: double.infinity,

                       decoration: BoxDecoration(
                           color: Colors.black,
                         image:DecorationImage(
                             fit: BoxFit.fill,
                             image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY2JICloTAYzyM5Eih0n9FcJdLGESg-BV3ow&usqp=CAU"))
                       ),
                     );
                   },
               ),
             ),

          ],
        ),
      ),
    );
  }
}

