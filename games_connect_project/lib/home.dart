import 'package:flutter/material.dart';
import 'package:games_connect_project/widget_function.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Games Connect"),
      centerTitle: true,
      backgroundColor: Colors.black,
      ),
      body: Container(
        //largura responsiva
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black.withBlue(60), Colors.black.withBlue(20)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),

        ),
        
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Row(
            children: [
              Column(
                children: [
                  WidgetFunction('God of War Ragnarok','lib/imagens/download-4.jpg'),
                  WidgetFunction('God of War Ragnarok 2','lib/imagens/download-4.jpg'),
                  WidgetFunction('God of War Ragnarok 3','lib/imagens/download-4.jpg'),
                  
                ],
              ),

            ],
          ),

        ),

      ),

      drawer: Drawer(
        child: Container(
          width: MediaQuery.of(context).size.width*.1,
          decoration: BoxDecoration(

            gradient: LinearGradient(
              colors: [Colors.black.withBlue(60), Colors.black.withBlue(20)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),

          ),

        ),

      ),

    );
  }
}