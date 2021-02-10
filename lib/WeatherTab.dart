import 'package:flutter/material.dart';

class WeatherTab extends StatefulWidget {
  @override
  _WeatherTabState createState() => _WeatherTabState();
}

class _WeatherTabState extends State<WeatherTab> {
  String amk = '30 \u2103';
  String bdk = '33 \u2103';
  String ys = '29 \u2103';
  bool _isFavourite = true;
  bool _isCelcius = true;

  void _toggleFavourite() {
    setState(() {
          if(_isFavourite){
            _isFavourite = false;
            AlertDialog dialog = AlertDialog(
                title: Text('Favourite Page'),
                content: Text('Added To Favourites!'),
                actions: [
                  FlatButton(
                    child: Text('Ok'),
                    onPressed: (){
                      Navigator.maybePop(context);
                    },
                  )
                ]
              );
              showDialog(context: context, child: dialog);
          }
          else {
            _isFavourite = true;
          }
        }
        );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(    //Headers
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 30.0, top: 30.0),
                child: Text(
                  'Area',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
              flex: 1,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Column(
                  children: <Widget>[
                      FlatButton(
                        child: Icon(
                          Icons.thermostat_sharp,
                          color: Colors.white,
                          size:  30.0,
                        ),
                          onPressed: (){
                          setState(() {
                            if(_isCelcius){
                              _isCelcius = false;
                              amk = '30 \u2103';
                              bdk = '33 \u2103';
                              ys = '29 \u2103';
                            }
                            else{
                              _isCelcius = true;
                              amk = '86 \u2109';
                              bdk = '91 \u2109';
                              ys = '84 \u2109';
                            }
                            });
                          }
                        ),

                    Text(
                      'Temperature',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    Text('Humidity (%)',
                        style: TextStyle(fontSize: 20.0, color: Colors.white)),
                  ],
                ),
              ),
              flex: 3,
            ),
          ],
        ),
        ListTile(   //Location: Ang Mo Kio
          leading: SizedBox(width: 100.0, child: Text('Ang Mo Kio')),
          title: Padding(
              padding: EdgeInsets.only(left: 70.0),
              child: Text('$amk'),
              ),
          subtitle: Padding(
            padding: EdgeInsets.only(left: 70.0),
            child: Text('75%'),
          ),
          trailing: IconButton(
            icon: (_isFavourite ? Icon(Icons.star_border_outlined) : Icon(Icons.star)),
            color: Colors.yellowAccent[100],
            onPressed: _toggleFavourite,
          ),
        ),
        ListTile(   //Location: Bedok
          leading: SizedBox(width: 100.0, child: Text('Bedok')),
          title: Padding(
            padding: EdgeInsets.only(left: 70.0),
            child: Text('$bdk'),
          ),
          subtitle: Padding(
            padding: EdgeInsets.only(left: 70.0),
            child: Text('75%'),
          ),
          trailing: IconButton(
            icon: (_isFavourite ? Icon(Icons.star_border_outlined) : Icon(Icons.star)),
            color: Colors.yellowAccent[100],
            onPressed: _toggleFavourite,
          ),
        ),
        ListTile(   //Location: Yishun
          leading: SizedBox(width: 100.0, child: Text('Yishun')),
          title: Padding(
            padding: EdgeInsets.only(left: 70.0),
            child: Text('$ys'),
          ),
          subtitle: Padding(
            padding: EdgeInsets.only(left: 70.0),
            child: Text('75%'),
          ),
          trailing: IconButton(
            icon: (_isFavourite ? Icon(Icons.star_border_outlined) : Icon(Icons.star)),
            color: Colors.yellowAccent[100],
            onPressed: _toggleFavourite,
          ),
        ),
      ],
    );
  }
}