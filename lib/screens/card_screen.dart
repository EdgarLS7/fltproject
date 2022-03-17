import 'package:flt_project/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 30, vertical: 15),
        children: const [

          CustomCard(),
          SizedBox( height: 15,),
          ImageCard( imageUrl: 'https://www.creativefabrica.com/wp-content/uploads/2021/06/12/mountain-landscape-illustration-design-b-Graphics-13326021-1.jpg'),
          SizedBox( height: 20,),
          ImageCard( imageUrl: 'https://epsep.com.mx/wp-content/uploads/2020/10/travel-landscape-01.jpg'),
          SizedBox( height: 20,),
          ImageCard( imageUrl: 'http://www.solofondos.com/wp-content/uploads/2016/04/mountain-landscape-wallpaper.jpg'),
          SizedBox( height: 20,),
          ImageCard( cardName: 'Un Paisaje',
            imageUrl: 'https://www.mickeyshannon.com/photos/landscape-photography.jpg',),
          SizedBox( height: 50,),

        ],
      )
    );
  }
}

