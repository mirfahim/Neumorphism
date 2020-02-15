import 'package:broad_solution/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());







class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.green,
      ),
      home: MyAppPage(title: 'Flutter Demo Home Page'),
    );
  }
}





class MyAppPage extends StatefulWidget {
  MyAppPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<MyAppPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      backgroundColor: Color(0xFF55b9f3),
      body: Column(


        children: <Widget>[
Container(
          height: 80,
          width: 392,
          
          child: Column(children: <Widget>[
             Center(child:
          Text(
            "", style:TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold),
          ),
          ),
            
          Center(child:
          Text(
            "Home", style:TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold),
          ),
          ),
          ],),
          
      
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment(-4.0, -16.0),
                  end: Alignment(4.0, 16.0),
                  colors: [
                    Color(0xFF5bc6ff),
                    Color(0xFF4da7db),
                  ]),
              borderRadius: BorderRadius.all(Radius.circular(35)),
              boxShadow: [
                BoxShadow(
                    color: Color(0xFF4ca5d8),
                    offset: Offset(5.0, 5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
                BoxShadow(
                    color: Color(0xFF5ecdff),
                    offset: Offset(5.0, 5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
              ]),
        ),

// ................................middle...........................

Container(
  height:8,
  
),
          
          
          Container(
          height: 440,
          width: 370,
          child:Column(children: <Widget>[
            
          Center(child:
          Text(
            "Select your package", style:TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.bold),
          ),
          ),
          ],
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment(-4.0, -16.0),
                  end: Alignment(4.0, 16.0),
                  colors: [
                    Color(0xFF5bc6ff),
                    Color(0xFF4da7db),
                  ]),
              borderRadius: BorderRadius.all(Radius.circular(35)),
              boxShadow: [
                BoxShadow(
                    color: Color(0xFF4ca5d8),
                    offset: Offset(5.0, 5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
                BoxShadow(
                    color: Color(0xFF5ecdff),
                    offset: Offset(5.0, 5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
              ]),
        ),

       //................................middle end ......................................   
        
        Container(
          height: 10,
        ),
        
         Container(
           child:Row(children: <Widget>[

             Container(
               width: 15,
             ),
             
           Column(
             children: <Widget>[
          
          Container(
          height: 100,
          width: 100,
          child: Icon(
            Icons.home,
            size: 80,
            color: Colors.white,
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment(-4.0, -16.0),
                  end: Alignment(4.0, 16.0),
                  colors: [
                    Color(0xFF5bc6ff),
                    Color(0xFF4da7db),
                  ]),
              borderRadius: BorderRadius.all(Radius.circular(35)),
              boxShadow: [
                BoxShadow(
                    color: Color(0xFF4ca5d8),
                    offset: Offset(5.0, 5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
                BoxShadow(
                    color: Color(0xFF5ecdff),
                    offset: Offset(-5.0, -5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
              ]),
        ),




Container(
  height: 10,
),
        Container(
          height: 100,
          width: 100,
          child: Icon(
            Icons.settings,
            size: 80,
            color: Colors.white,
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment(-4.0, -16.0),
                  end: Alignment(4.0, 16.0),
                  colors: [
                    Color(0xFF5bc6ff),
                    Color(0xFF4da7db),
                  ]),
              borderRadius: BorderRadius.all(Radius.circular(35)),
              boxShadow: [
                BoxShadow(
                    color: Color(0xFF4ca5d8),
                    offset: Offset(5.0, 5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
                BoxShadow(
                    color: Color(0xFF5ecdff),
                    offset: Offset(-5.0, -5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
              ]),
        ),
        ],),


//................................new row two........................................
Container(
  width: 30,
),

         Column(
             children: <Widget>[
       GestureDetector(
                 onTap: () {
        Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                               MyApp()));
         
      },
                  child:   
        Container(
          height: 100,
          width: 100,
          child: Icon(
            Icons.add,
            size: 80,
            color: Colors.white,
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment(-4.0, -16.0),
                  end: Alignment(4.0, 16.0),
                  colors: [
                    Color(0xFF5bc6ff),
                    Color(0xFF4da7db),
                  ]),
              borderRadius: BorderRadius.all(Radius.circular(35)),
              boxShadow: [
                BoxShadow(
                    color: Color(0xFF4ca5d8),
                    offset: Offset(5.0, 5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
                BoxShadow(
                    color: Color(0xFF5ecdff),
                    offset: Offset(-5.0, -5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
              ]),
        ),
       ),
Container(
  height: 10,
),
        Container(
          height: 100,
          width: 100,
          child: Icon(
            Icons.list,
            size: 80,
            color: Colors.white,
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment(-4.0, -16.0),
                  end: Alignment(4.0, 16.0),
                  colors: [
                    Color(0xFF5bc6ff),
                    Color(0xFF4da7db),
                  ]),
              borderRadius: BorderRadius.all(Radius.circular(35)),
              boxShadow: [
                BoxShadow(
                    color: Color(0xFF4ca5d8),
                    offset: Offset(5.0, 5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
                BoxShadow(
                    color: Color(0xFF5ecdff),
                    offset: Offset(-5.0, -5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
              ]),
        ),

],),

//...................................................row end..........................................
Container(
  width: 30,
),
//.....................................ROW THREE..........................................
         Column(
             children: <Widget>[
          
        Container(
          height: 100,
          width: 100,
          child: Icon(
            Icons.account_box,
            size: 80,
            color: Colors.white,
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment(-4.0, -16.0),
                  end: Alignment(4.0, 16.0),
                  colors: [
                    Color(0xFF5bc6ff),
                    Color(0xFF4da7db),
                  ]),
              borderRadius: BorderRadius.all(Radius.circular(35)),
              boxShadow: [
                BoxShadow(
                    color: Color(0xFF4ca5d8),
                    offset: Offset(5.0, 5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
                BoxShadow(
                    color: Color(0xFF5ecdff),
                    offset: Offset(-5.0, -5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
              ]),
        ),
        
Container(
  height: 10,
),
        Container(
          height: 100,
          width: 100,
          child: Icon(
            Icons.phone,
            size: 80,
            color: Colors.white,
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment(-4.0, -16.0),
                  end: Alignment(4.0, 16.0),
                  colors: [
                    Color(0xFF5bc6ff),
                    Color(0xFF4da7db),
                  ]),
              borderRadius: BorderRadius.all(Radius.circular(35)),
              boxShadow: [
                BoxShadow(
                    color: Color(0xFF4ca5d8),
                    offset: Offset(5.0, 5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
                BoxShadow(
                    color: Color(0xFF5ecdff),
                    offset: Offset(-5.0, -5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
              ]),
        ),

],),
//...................................Row end.................................
             ],
           ),
         ),
         
        ],
      ),
    );
      }
    }
    
    


     
    
    


     
