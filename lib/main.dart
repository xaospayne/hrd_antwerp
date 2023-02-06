import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black45,
          title: const Text('HRD Anttwerp',style: TextStyle(fontFamily: 'OpenSans',fontSize: 20),),
        ),
        drawer:( Drawer(
          backgroundColor: Colors.black45,
          width: 250,
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.star_sharp,color: Colors.white,),
                title: const Text('Company',style: TextStyle(fontFamily: 'OpenSans',fontSize: 20,color: Colors.white),),
                onTap: () {
                  // Navigate to the home screen
                },
              ),
              InkWell(
                onTap:() async {
                  const url = 'https://my.hrdantwerp.com/';
                  // ignore: deprecated_member_use
                  if (await canLaunch(url)) {
                  // ignore: deprecated_member_use
                  await launch(url);
                  } else {
                  throw 'Could not launch $url';
                  }
                },
                child: const ListTile(
                  leading: Icon(Icons.home,color: Colors.white,),
                  title: Text('MyHRD',style: TextStyle(fontFamily: 'OpenSans',fontSize: 20,color: Colors.white),),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.list_alt_rounded,color: Colors.white,),
                title: const Text('Certification',style: TextStyle(fontFamily: 'OpenSans',fontSize: 20,color: Colors.white),),
                onTap: () {
                  // Navigate to the settings screen
                },
              ),
              ListTile(
                leading: const Icon(Icons.cast_for_education,color: Colors.white,),
                title: const Text('Education',style: TextStyle(fontFamily: 'OpenSans',fontSize: 20,color: Colors.white),),
                onTap: () {
                  // Navigate to the settings screen
                },
              ),
              ListTile(
                leading: const Icon(Icons.qr_code_scanner,color: Colors.white,),
                title: const Text('Reports',style: TextStyle(fontFamily: 'OpenSans',fontSize: 20,color: Colors.white),),
                onTap: () {
                  // Navigate to the settings screen
                },
              ),
              ListTile(
                leading: const Icon(Icons.search,color: Colors.white,),
                title: const Text('Locations',style: TextStyle(fontFamily: 'OpenSans',fontSize: 20,color: Colors.white),),
                onTap: () {
                  // Navigate to the settings screen
                },
              ),
              ListTile(
                leading: const Icon(Icons.chat_bubble,color: Colors.white,),
                title: const Text('Contact Us',style: TextStyle(fontFamily: 'OpenSans',fontSize: 20,color: Colors.white),),
                onTap: () {
                  // Navigate to the settings screen
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings,color: Colors.white,),
                title: const Text('Settings',style: TextStyle(fontFamily: 'OpenSans',fontSize: 20,color: Colors.white),),
                onTap: () {
                  // Navigate to the settings screen
                },
              ),

            ],
          ),
        )
        ),
        body: const MainPage(),
      ),
    ),
  );
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/hrdstar.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
