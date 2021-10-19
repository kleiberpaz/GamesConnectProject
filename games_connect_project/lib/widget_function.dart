import 'package:flutter/material.dart';

class WidgetFunction extends StatelessWidget {
   //ATRIBUTOS
  // Os atributos serão utilizados para receber dados 
  // no momento da criação do Widget
  final String nome;
  final String imagem;

  const WidgetFunction(this.nome, this.imagem, {Key? key}) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return Container(

      // MARGENS (externo)
      //margin: EdgeInsets.all(5),
      //margin: EdgeInsets.only(top: 10),
      margin: EdgeInsets.fromLTRB(5, 10, 2, 0),

      // ESPAÇAMENTO (interno)
      padding: EdgeInsets.all(5),
      //padding: EdgeInsets.only(top: 5),
      //padding: EdgeInsets.fromLTRB(30, 20, 30, 0),

      width: MediaQuery.of(context).size.width * .95,
      //height: 300,
      
      //DECORAÇÃO
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black.withBlue(60), Colors.black.withBlue(20)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),

        //BORDAS ARREDONDADAS
        borderRadius: BorderRadius.all(Radius.circular(20))
       ),

      child: Row(
        children: [   
          Container(
            // FOTO CIRCULAR DO JOGO
            child:ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: Image.network(
                  this.imagem,
                  width: MediaQuery.of(context).size.width * .35,

              ),
            ), 
          ),
          Container(
            margin: EdgeInsets.only(left: 25),
            child:Text(
              this.nome, 
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),  
            ) 
          )     

        ],
      ),
    );
  }
}