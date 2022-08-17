import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => IconButton(
            color: Colors.teal,
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.menu_rounded,
                size: 30,
              ),
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        toolbarHeight: 80,
        elevation: 5.0,
        title: Center(
          child: Row(
            children: [

              Container(
                width: 1.0,
                height: 32.0,
                color: Colors.black26,
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    child: Align (
                      alignment: Alignment.centerLeft,
                      child: Image.asset('Logo-with-text-horizontal.png', fit: BoxFit.contain)
                    ),height: 40
                  ),
                ),
              ),

              Container(
                width: 1.0,
                height: 32.0,
                color: Colors.black26,
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton (
                  child: Text ('Log in', style: TextStyle (color: Colors.teal)
                  ),
                  onPressed: () {  },
                ),
              ),

              TextButton (
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    )
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text ('Get Started', style: TextStyle (color: Colors.white, )),
                ),
                onPressed: () {  },
              ),

            ],
          ),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home page'),
              onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  LandingPage()));},
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text('Log in'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About Us'),
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text('Contact us'),
            ),
          ],
        ),
      ),
    );
  }
}