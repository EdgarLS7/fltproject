import 'package:flutter/material.dart';

class ImageBackground extends StatelessWidget {

  final Widget child;

  const ImageBackground({
    Key? key, 
    required this.child
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,

      child: Stack(
        children: [

          const _ImageBox(),
          
          child
        ],
      ),
    );
  }
}

class _ImageBox extends StatelessWidget {
  const _ImageBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      decoration: _colorBackgroundGradient(),
    );
  }

  BoxDecoration _colorBackgroundGradient() => const BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color.fromRGBO(63, 63, 156, 1),
        Color.fromRGBO(90, 70, 178, 1)
      ]
    )
  );
}
