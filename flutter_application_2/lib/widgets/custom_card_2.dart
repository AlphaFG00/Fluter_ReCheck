import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      //clipbehavior para poder cortar todo y amoldarlo al espacio de la tarjeta
      clipBehavior: Clip.antiAlias,
      //shape para los bordes
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 50,
      child: Column(
        children: [
          //widget para imagenes y animacion de carga en caso de no tener conexion o sea lenta
          const FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            //funciona donde el width es limitado
            width: double.infinity,
            height: 230,
            //fit para que se adapte al widget
            fit: BoxFit.cover,
            //tiempo de fadein
            fadeInDuration: Duration(milliseconds: 300),
            image: NetworkImage(
                'https://i.pinimg.com/originals/11/c2/1b/11c21b6b1dca4595a0d1e0187f602e35.jpg'),
          ),
          Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: const Text('bien pinchi vintage'))
        ],
      ),
    );
  }
}
