import 'package:flutter/material.dart';
import 'package:games_connect_project/widget_function.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //largura responsiva
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(

          gradient: LinearGradient(
            colors: [Colors.black.withBlue(60), Colors.black.withBlue(20)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),

        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            child: Row(
              children: [
                Column(
                  children: [
                    WidgetFunction('Audi','lib/imagens/audi_q8.jpg'),
                    WidgetFunction('Audi','lib/imagens/audi_q8.jpg'),
                    WidgetFunction('Audi','lib/imagens/audi_q8.jpg'),
                    
                  ],
                ),
                Column(
                  children: [
                    WidgetFunction('Audi','lib/imagens/audi_q8.jpg'),
                    WidgetFunction('Audi','lib/imagens/audi_q8.jpg'),
                    WidgetFunction('Audi','lib/imagens/audi_q8.jpg'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}