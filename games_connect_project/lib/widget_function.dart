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
      //margin: EdgeInsets.only(top: 5),
      margin: EdgeInsets.fromLTRB(30, 20, 10, 0),

      // ESPAÇAMENTO (interno)
      padding: EdgeInsets.all(20),
      //padding: EdgeInsets.only(top: 5),
      //padding: EdgeInsets.fromLTRB(30, 20, 30, 0),

      width: MediaQuery.of(context).size.width * .40,
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

      child: Column(
        children: [
          Text(this.nome, 
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple[100],
            ),  
          ),
          
          SizedBox(height: 10),
          // FOTO DO CARRO
          Image.asset(this.imagem)
        ],
      ),
    );
  }
}