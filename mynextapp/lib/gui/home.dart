import 'package:flutter/material.dart';

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,

        drawer: new Drawer(
           
          child: new ListView(
            // hide up line bar
            padding: EdgeInsets.all(0.0),
            children: <Widget>[

              new DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.purple[400],
                ),
                  child: new Column(
                    children: <Widget>[
                      // Avatar
                      new CircleAvatar(
                        backgroundColor: Colors.blue[200],
                        radius: 50.0,

                      ),
                      new Padding(padding: EdgeInsets.all(7.0),),
                      new Text('Sherien Bassem',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                      
                      ),
                    ],
                  ),
              ),
              // Body
              // 1 
              new ListTile(

                leading: Icon(Icons.home),
                title: new Text('Home',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                
                ),
                onTap: () => debugPrint('Home - Pressed') ,

              ),

              // 2

               new ListTile(
                
                leading: Icon(Icons.person),
                title: new Text('Profile',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                
                ),
                onTap: () => debugPrint('Account - Pressed') ,

              ),

              // 3

               new ListTile(
                
                leading: Icon(Icons.shop),
                title: new Text('Shop',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                
                ),
                onTap: () => debugPrint('Shop - Pressed') ,

              ),

                //4

                 new ListTile(
                
                leading: Icon(Icons.category),
                title: new Text('Categories',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                
                ),
                onTap: () => debugPrint('Categories - Pressed') ,

              ),
              // 5

               new ListTile(
                
                leading: Icon(Icons.settings),
                title: new Text('Setting',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                
                ),
                onTap: () => debugPrint('Air Line - Pressed') ,

              ),

              // 6

               new ListTile(
                
                leading: Icon(Icons.exit_to_app),
                title: new Text('LogOut',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                
                ),
                onTap: () => debugPrint('LogOut - Pressed') ,

              ),
            ],
          ),

        ),

      appBar: AppBar(
        //  leading: Icon(Icons.menu),

            // Sub Header
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(48.0),
              child: Theme(
                data: Theme.of(context).copyWith(
                  accentColor: Colors.pinkAccent
                ),


               child: new Container(
                 height: 48.0,
                 alignment: Alignment.center,

                  child: new Text('By - Sherien Bassem',style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                  ),
                  ),
                ),
              ),
              //End Sub Header
          ),


          centerTitle: true,
          title: Text('Ghana-Est',
          textAlign: TextAlign.center,
          
          style: TextStyle(
            fontSize: 25.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            
          ),
          ),
          backgroundColor: Colors.purple,
          actions: <Widget>[
            new IconButton(icon:new Icon(Icons.home) ,
            onPressed: () => debugPrint('Home-Pressed'),
            ),
            //=================
            // Custom List Menu
            //=================
            new PopupMenuButton(
              onSelected: (i){
                debugPrint(i);
              },
              itemBuilder: (BuildContext content){
                // return [list of NameIcons] . map((){}) .tolist();
                return["Help", "Contact Us"].map((item){
                  //widget PopUpMenuItem()
                 return new PopupMenuItem(
               // 1- value => type item = inside Parameter in Map Function
               // 2- child => type Row
                   value: item,
                     // in side "map-Function"
                    // return "Row"
                    child: new Row(
                    children: <Widget>[
                      //===================== ternary if ==============
                      new Icon((item == "Help")?Icons.help:Icons.mail),
                      new Text(item),

                    ],
                  ),
                  );

                }).toList();
              },

            ),
             //====================
            // End Custom List Menu
            //=====================
             
            
          ],
      ),
    );
  }

}