import 'package:flt_project/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          
          const FadeInImage(
            image: NetworkImage('https://www.creativefabrica.com/wp-content/uploads/2021/06/12/mountain-landscape-illustration-design-b-Graphics-13326021-1.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only( right: 20, top: 10, bottom: 10),
            child: const Text('Paisaje Natural'),
          )
        ],
      )
    );
  }
}