import 'package:broad_solution/home.dart';
import 'package:broad_solution/order/buy.dart';
import 'package:broad_solution/test.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
          Container(
              height:12,
            ),
//......................................stream builder...................................
Row(
          children: <Widget>[

            Container(
              width: 25,
            ),
Container(
  
          height:380,
           width: 110,
          child:Center(child:

      
     
      StreamBuilder(
        stream: Firestore.instance.collection('package').snapshots(),
        builder: (context, snapshot){
          if(!snapshot.hasData){
            const Text('loading');
          }
          else{
            return ListView.builder(
              itemCount:snapshot.data.documents.length ,

              itemBuilder:(context, index) {
              
              
              
                DocumentSnapshot mypost=snapshot.data.documents[index];
                return GestureDetector(
                 onTap: () {
        final snackBar = SnackBar(content: Text("You are going to details page"));

        Scaffold.of(context).showSnackBar(snackBar);
         Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                               HomeApp()));
      },
                  child:
                Stack(
                  
                  children: <Widget>[
                   Column( children: <Widget>[

                     // .............package container................

                    Container(
                     
                      width: 100,
                      height: 120.0,
                      color:  Color(0xFF4ca5d8),

                      child: Padding(
                        padding: EdgeInsets.only(top:8.0, bottom: 8.0),
                        child: Material(
                          color:Colors.white,
                          elevation: 11,
                          shadowColor: Color(0x802196F3),
                          child: Center(child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                
                                  
                                
                                  Text('${mypost['mb']}',
                                style:TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,color:Colors.black,),
                                ),
                                
                                // SizedBox(height: 5,),
                                Text('${mypost['title']}',
                                style:TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold,color:Colors.black,),
                                ),
                                // SizedBox(height: 2.0,),
                                Text('${mypost['subtitle']}',
                                style:TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold,color:Colors.black),
                                ),
                               
                                
                              ],
                            ),
                          ),),
                        ),

                      ),
                    
                
                    ),


                    //  ...............  package container end.............



                    ],
                    ),
                  ],
                ),
                );
               
              } ,
            );
          }
        },

      ),
      
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
      

//..........................one end.............stream builder end....................................................
Container(
  
          height:380,
           width: 110,
          child:Center(child:

      
     
      StreamBuilder(
        stream: Firestore.instance.collection('packagetwo').snapshots(),
        builder: (context, snapshot){
          if(!snapshot.hasData){
            const Text('loading');
          }
          else{
            return ListView.builder(
              itemCount:snapshot.data.documents.length ,

              itemBuilder:(context, index) {
              
              
              
                DocumentSnapshot mypost=snapshot.data.documents[index];
                return GestureDetector(
                 onTap: () {
        final snackBar = SnackBar(content: Text("You are going to details page"));

        Scaffold.of(context).showSnackBar(snackBar);
         Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                               HomeApp()));
      },
                  child:
                Stack(
                  
                  children: <Widget>[
                   Column( children: <Widget>[

                     // .............package container................

                    Container(
                     
                      width: 100,
                      height: 120.0,
                      color:  Color(0xFF4ca5d8),

                      child: Padding(
                        padding: EdgeInsets.only(top:8.0, bottom: 8.0),
                        child: Material(
                          color:Colors.white,
                          elevation: 11,
                          shadowColor: Color(0x802196F3),
                          child: Center(child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                
                                  
                                
                                  Text('${mypost['mb']}',
                                style:TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,color:Colors.black,),
                                ),
                                
                                // SizedBox(height: 5,),
                                Text('${mypost['title']}',
                                style:TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold,color:Colors.black,),
                                ),
                                // SizedBox(height: 2.0,),
                                Text('${mypost['subtitle']}',
                                style:TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold,color:Colors.black),
                                ),
                               
                                
                              ],
                            ),
                          ),),
                        ),

                      ),
                    
                
                    ),


                    //  ...............  package container end.............



                    ],
                    ),
                  ],
                ),
                );
               
              } ,
            );
          }
        },

      ),
      
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

//..............................two row end
Container(
  
          height:380,
           width: 110,
          child:Center(child:

      
     
      StreamBuilder(
        stream: Firestore.instance.collection('packagethree').snapshots(),
        builder: (context, snapshot){
          if(!snapshot.hasData){
            const Text('loading');
          }
          else{
            return ListView.builder(
              itemCount:snapshot.data.documents.length ,

              itemBuilder:(context, index) {
              
              
              
                DocumentSnapshot mypost=snapshot.data.documents[index];
                return GestureDetector(
                 onTap: () {
        final snackBar = SnackBar(content: Text("You are going to details page"));

        Scaffold.of(context).showSnackBar(snackBar);
         Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                               Buy()));
      },
                  child:
                Stack(
                  
                  children: <Widget>[
                   Column( children: <Widget>[

                     // .............package container................

                    Container(
                     
                      width: 100,
                      height: 120.0,
                      color:  Color(0xFF4ca5d8),

                      child: Padding(
                        padding: EdgeInsets.only(top:8.0, bottom: 8.0),
                        child: Material(
                          color:Colors.white,
                          elevation: 11,
                          shadowColor: Color(0x802196F3),
                          child: Center(child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                
                                  
                                
                                  Text('${mypost['mb']}',
                                style:TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,color:Colors.black,),
                                ),
                                
                                // SizedBox(height: 5,),
                                Text('${mypost['title']}',
                                style:TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold,color:Colors.black,),
                                ),
                                // SizedBox(height: 2.0,),
                                Text('${mypost['subtitle']}',
                                style:TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold,color:Colors.black),
                                ),
                               
                                
                              ],
                            ),
                          ),),
                        ),

                      ),
                    
                
                    ),


                    //  ...............  package container end.............



                    ],
                    ),
                  ],
                ),
                );
               
              } ,
            );
          }
        },

      ),
      
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

//................................thre end..........................................

          ],),


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
                               Test()));
         
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
    
    


     
    
    


     
