import 'package:eatclick/edit_profile.dart';
import 'package:eatclick/setting.dart';
import 'package:eatclick/welcome_page.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // centerTitle: true,
        title: const Text("Profile", style: TextStyle(color: Colors.black)),
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
        actions: <Widget>[
          IconButton(onPressed: (){Navigator.push(
            context, MaterialPageRoute(
            builder: (context) => const Setting()));}, icon: Icon(Icons.settings),color: Colors.black,)
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              SizedBox(
                width: 120, height: 120,
                child: ClipRRect(borderRadius: BorderRadius.circular(100),child: Image(image: AssetImage('image/dog.png'),fit: BoxFit.cover, )), 
              ),
              const SizedBox(height: 10),
              Text("Baba", style: Theme.of(context).textTheme.headline4),
              // Text(tProfileHeading, style: Theme.of(context).textTheme.bodyText2),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Liked"),
                  Text("Plans"),
                ],
              ),
              SizedBox(height:30),

              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: (){Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const EditProfile()));},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey, side: BorderSide.none, shape: const StadiumBorder()),
                    child: const Text("Edit Profile",style: TextStyle(color: Colors.black, fontSize: 18)),
                  ),
                ),
              const SizedBox(height: 10),
              SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: (){Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WelcomePage()));},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black54, side: BorderSide.none, shape: const StadiumBorder()),
                  child: const Text("Log Out",style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
              ),
                const Divider(),
                const SizedBox(height: 10),

                // ProfilMenuWidget(),
                // ProfileMenuWidget(),
                // ProfileMenuWidget(),

            ],
          ),
        ),
      ),
    );
  }
}
