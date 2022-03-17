import 'package:flt_project/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {

  final String imageUrl;
  final String? cardName;

  const ImageCard({
    Key? key, 
    required this.imageUrl, 
    this.cardName
  }) : super(key: key);


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
          
          FadeInImage(
            image: NetworkImage( imageUrl ),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          
          if ( cardName != null )
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only( right: 20, top: 5, bottom: 5),
            child: Text( cardName! ),
          )
        ],
      )
    );
  }
}