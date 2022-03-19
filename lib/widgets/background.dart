import 'dart:math';

import 'package:flutter/material.dart';

class BackGroundGrid extends StatelessWidget {
   
  const BackGroundGrid({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              stops: [
                0.2, 0.8
              ],
              colors: [
                Color(0xff2E305F), 
                Color(0xff202333)] 
              ),
          ),
        ),
                   Positioned(
             top: -100,
             left: -10,
             child: _ContainerBox())
      ],
    );
  }
}

class _ContainerBox extends StatelessWidget {
  const _ContainerBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: - pi / 5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Container(
          height: 300,
          width: 350,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(236, 98, 188, 1),
                Color.fromRGBO(241, 142, 172, 1),
                
              ] 
              )
          ),
        ),
      ),
    );
  }
}