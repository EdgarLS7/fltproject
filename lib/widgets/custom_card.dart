import 'package:flt_project/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: Text('Soy una titulo'),
            subtitle: Text(
                'Occaecat reprehenderit occaecat nostrud dolore ut tempor amet. Duis consequat duis qui qui labore cillum ipsum id reprehenderit proident pariatur. Ipsum eu ea nulla eiusmod tempor Lorem ex est proident. Fugiat irure occaecat non mollit laborum fugiat voluptate.'),
          ),
          Padding(
            padding: const EdgeInsets.only( right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {}, 
                  child: const Text('Cancelar')
                ),
                TextButton(
                  onPressed: () {}, 
                  child: const Text('Ok')
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
