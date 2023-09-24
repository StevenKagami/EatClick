import 'package:eatclick/component/app_card.dart';
import 'package:eatclick/detail.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:eatclick/main_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          // centerTitle: true,
          title: const Text("Hi, ", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              // shrinkWrap: true,
              // scrollDirection: Axis.vertical,
              children: [
                TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Search for food",
                        prefixIcon: const Icon(Icons.search),
                        prefixIconColor: Colors.black,
                        suffixIcon: const Icon(Icons.filter_alt),
                        suffixIconColor: Colors.black)),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      "Choose Category",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                        margin: const EdgeInsets.only(right: 5),
                        padding: const EdgeInsets.all(20),
                        width: 90,
                        height: 70,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('image/friedrice.jpeg'),
                          ),
                        )),
                    Container(
                        margin: const EdgeInsets.only(left: 5, right: 5),
                        padding: const EdgeInsets.all(20),
                        width: 90,
                        height: 70,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("image/onionring.jpeg"),
                          ),
                        )),
                    Container(
                        margin: const EdgeInsets.only(left: 5, right: 5),
                        padding: const EdgeInsets.all(20),
                        width: 90,
                        height: 70,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("image/strawberrycake.jpeg"),
                          ),
                        )),
                    Container(
                        margin: const EdgeInsets.only(left: 5),
                        padding: const EdgeInsets.all(20),
                        width: 90,
                        height: 70,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("image/lemontea.jpg"),
                          ),
                        ))
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Main"),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Appetizer"),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Dessert"),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Drink"),
                    )
                  ],
                ),
                // ListView(
                //   shrinkWrap: true,
                //   scrollDirection: Axis.vertical,),
                const SizedBox(
                  height: 25,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Main Course",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(color: Colors.lightBlue),
                    )
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: GridView.count(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 2,
                    // padding: EdgeInsets.all(20),
                    // crossAxisSpacing: 20,
                    // mainAxisSpacing: 20,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage('image/friedrice.jpeg'),fit: BoxFit.cover,)),
                        child: ElevatedButton(
                          style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.transparent)),
                        onPressed: (){Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Detail()));}, 
                        child: Container(
                        
                          child: Transform.translate(
                            offset: Offset(25, 160),
                            child: const Text("Fried Rice with Egg",
                                style:
                                    TextStyle(fontWeight: FontWeight.bold)))),),
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('image/ayambakar.jpeg'),fit: BoxFit.cover,)),
                          child: Transform.translate(
                              offset: Offset(25, 170),
                              child: const Text("Roasted Chicken",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)))),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('image/salmonsalad.jpg'),fit: BoxFit.cover,)),
                          child: Transform.translate(
                              offset: Offset(25, 170),
                              child: const Text("Salmon Salad",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)))),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('image/salad2.jpg'),fit: BoxFit.cover,),
                                  ),
                          child: Transform.translate(
                              offset: Offset(25, 170),
                              child: const Text("Salad",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)))),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('image/friedrice.png'),fit: BoxFit.cover,)),
                          child: Transform.translate(
                              offset: Offset(25, 170),
                              child: const Text("Chicken Fried Rice",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)))),
                    ]),
                ),
                
                const SizedBox(height: 15,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "My Plans",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                  ],
                ),


              ],
            )));
  }
}
