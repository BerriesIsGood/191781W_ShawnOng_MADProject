import 'package:flutter/material.dart';
import 'AboutTab.dart';
import 'WeatherTab.dart';
import 'TimeOfSun.dart';
import 'FavouritesTab.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project',
      home: LoginPage(),
    );
  }
}

textFields(String txt){    //Function to create TextFields txt being hintText
  return(
    Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 5.0, left: 30.0, right:30.0),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.blueGrey[300],
          hintText: '$txt',
          hintStyle: TextStyle(
            color: Colors.white,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.orange,
            ),
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.orange,
            ),
            borderRadius: BorderRadius.all(Radius.circular(50.0))
          ),
        ),
      ),
    )
  );
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {      //Login Page
  final name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.jpg"), fit: BoxFit.cover),
        ),
        child: ListView(
          children: <Widget>[
            Container(    //Logo
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/logo.png")),
              ),
            ),
            Padding(    //Username TextField
              padding: EdgeInsets.only(top: 30.0, bottom: 10.0, left: 30.0, right: 30.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blueGrey[300],
                  hintText: 'Username',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.orange,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.orange,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  ),
                ),
                controller: name,
              ),
            ),
            textFields('Password'),   //Password TextField

            Padding(    //Login button
              padding: EdgeInsets.only(
                  bottom: 20.0, top: 20.0, left: 40.0, right: 40.0),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage(
                      name: name.text,
                    ),
                    ),
                  );
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                  ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                color: Color(0xFF32A8CC),
                padding:
                    EdgeInsets.symmetric(horizontal: 140.0, vertical: 20.0),
              ),
            ),
            Center(   //Sign up button
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPage()),
                  );
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                  ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                color: Color(0xFF32A8CC),
                padding:
                    EdgeInsets.symmetric(horizontal: 135.0, vertical: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignupPage extends StatelessWidget {      //Register Page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/backgroundR.jpg"), fit: BoxFit.cover),
        ),
        child: ListView(
          children: <Widget>[
            Container(    //Logo
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/logo.png")),
              ),
            ),

            textFields('Email'),    //Email TextField
            textFields('Full Name'),  //Full Name TextField
            textFields('Username'),   //Username TextField
            textFields('Password'),   //Password TextField

            Padding(    //Register button
              padding: EdgeInsets.only(
                  bottom: 20.0, top: 20.0, left: 40.0, right: 40.0),
              child: FlatButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage(),
                    ),
                  );
                },
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                  ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                color: Color(0xFF32A8CC),
                padding:
                    EdgeInsets.symmetric(horizontal: 100.0, vertical: 20.0),
              ),
            ),
            Center(   //Back button
              child: FlatButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text(
                  'Back',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                  ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                color: Color(0xFF32A8CC),
                padding:
                    EdgeInsets.symmetric(horizontal: 135.0, vertical: 20.0),
              ),
            ),
          ],
        ),
      ),
      );
  }
}

class HomePage extends StatefulWidget {     //Home Page
  final String name;
  HomePage({Key key, this.name}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    String name = widget.name;
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Good day, $name!'),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile(),
                    ),
                  );
                },
              ),
            ],
            backgroundColor: Colors.teal[600],
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.info, color: Colors.yellowAccent[100],)),
                Tab(icon: Icon(Icons.cloud, color: Colors.yellowAccent[100],)),
                Tab(icon: Icon(Icons.brightness_4, color: Colors.yellowAccent[100],)),
                Tab(icon: Icon(Icons.star, color: Colors.yellowAccent[100],)),
              ],
            ),
          ),

          body: Container(
            decoration: BoxDecoration(
              color: Colors.blueAccent[100]
            ),
            child: TabBarView(
              children: [
                AboutTab(),   //About Tab
                
                WeatherTab(),   //Weather Tab

                TimeOfSun(),    //Time Of Sunrise/Sunset Tab

                FavouritesTab(),    //Favourites Tab
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {   //Profile Page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[100],
        body: ListView(
          children: <Widget>[
            Center(
              child: Image.asset("images/logo.png"),
            ),
            Center(
              child: Text('Profile', style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold))
            ),
            Padding(    //Profile Page
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, right: 50.0, left: 50.0),
              child: Container(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                color: Colors.white30,
              ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Email: shawnongjh@yahoo.com.sg'),
                      Text('Full Name: Shawn Ong'),
                      Text('Username: Shawn'),
                      Text('Password: qwerty123'),
                    ],
                  ),
                  ),
            ),
            textFields('Email'),
            textFields('Full Name'),
            textFields('Password'),
            Padding(    //Update Button
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: FlatButton(
                  onPressed: (){

                  },
                  child: Text(
                    'Update',
                    style: TextStyle(
                      fontSize: 20.0, color: Colors.white
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                    color: Color(0xFF32A8CC),
                    padding: EdgeInsets.symmetric(horizontal: 135.0, vertical: 20.0),
                ),
              ),
            ),
            Padding(    //Back Button
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: FlatButton(
                  onPressed: (){
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage())
                    );
                  },
                  child: Text(
                    'Back',
                    style: TextStyle(
                      fontSize: 20.0, color: Colors.white
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                    color: Color(0xFF32A8CC),
                    padding: EdgeInsets.symmetric(horizontal: 145.0, vertical: 20.0),
                ),
              ),
            ),
          ],
        ),
      );
  }
}