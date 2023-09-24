import 'package:eatclick/profile.dart';
import 'package:eatclick/setting.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text("Edit Profile", style: TextStyle(color: Colors.black)),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
            context, MaterialPageRoute(
            builder: (context) => const Profile()));
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
              // Text("Karina", style: Theme.of(context).textTheme.headline4),
              // Text(tProfileHeading, style: Theme.of(context).textTheme.bodyText2),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey, side: BorderSide.none, shape: const StadiumBorder()),
                    child: const Text("Change",style: TextStyle(color: Colors.black, fontSize: 18)),
                  ),
                ),
                const SizedBox(height: 10),
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
