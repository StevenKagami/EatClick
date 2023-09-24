import 'package:flutter/material.dart';

class LikedPage extends StatelessWidget {
  const LikedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // centerTitle: true,
        title:
            const Text("My Favourite", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, 
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ))],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            GridView.count(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              padding: EdgeInsets.all(20),
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: [
                Container(
                  
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('image/friedrice.jpeg'),fit: BoxFit.cover,)),
                  child: Row(children: [
                    Transform.translate(
                    offset: Offset(25, 100),
                    child: const Text("Fried Rice with Egg",
                      style: TextStyle(fontWeight: FontWeight.bold))), 
                    Transform.translate(
                    offset: Offset(25, -60),
                    child: Icon(Icons.favorite)), 
                  ],)
                  

                  
                ),
                Container(
                  
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('image/salmonsalad.jpg'),fit: BoxFit.cover,)),
                  child: Row(children: [
                    Transform.translate(
                    offset: Offset(25, 100),
                    child: const Text("Salmon Salad",
                      style: TextStyle(fontWeight: FontWeight.bold))), 
                    Transform.translate(
                    offset: Offset(60, -60),
                    child: Icon(Icons.favorite)), 
                  ],)
                  

                  
                ),
                Container(
                  
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('image/strawberrycake.jpeg'),fit: BoxFit.cover,)),
                  child: Row(children: [
                    Transform.translate(
                    offset: Offset(25, 100),
                    child: const Text("Strawberry Cake",
                      style: TextStyle(fontWeight: FontWeight.bold))), 
                    Transform.translate(
                    offset: Offset(40, -60),
                    child: Icon(Icons.favorite)), 
                  ],)
                  

                  
                ),
              ],
            ),
            const SizedBox(height: 25,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Recommendation", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),)
              ],
            )
          ], 
        ),
      ),

    );
  }
}
