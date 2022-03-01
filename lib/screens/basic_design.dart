import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
        children: [
          FadeInImage(
            width: double.infinity,
            height: size.height * 0.4,
            placeholder: const AssetImage('assets/loading.gif'), 
            image: const NetworkImage('https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg')
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 8),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text('Oesching lake landing in a decoration', style: textTheme.subtitle2,),
                          const SizedBox(
                            height: 5,
                          ),
                          Text('Santa Cruz, Bolivia', style: textTheme.caption,)
                        ],),
                      Row(
                        children: const [
                          Icon(Icons.star, color: Colors.red,),
                          Text('41'),
                        ],
                      )
                      ],
                      ),
                  ),
          Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                  _ButtonIcon(icon: Icons.call, text: 'call',color: Colors.blue,),
                  _ButtonIcon(icon: Icons.reply_outlined, text: 'route  ',color: Colors.blue,),
                  _ButtonIcon(icon: Icons.share, text: 'share',color: Colors.blue,),

          ],),
          Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text('Non quis irure consectetur id nisi amet. Aliqua voluptate anim non consectetur sit ea dolore et culpa do mollit culpa aliqua occaecat. Ipsum est aute amet id pariatur tempor aliqua velit nisi laboris elit est eiusmod veniam. In minim aliquip sit qui culpa veniam cupidatat cillum ullamco. Ipsum ad ut nulla nisi cupidatat ullamco sunt irure.'
                  , textAlign: TextAlign.justify,
                    style: textTheme.bodyText2,
                  ),
          ),
                ],
              ),
            )




        ],
        )
    );
  }
}

class _ButtonIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color? color;
  const _ButtonIcon({Key? key, required this.icon, required this.text, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, bottom: 30),
      child: Column(
        children: [
          Icon(icon, color: color ?? Colors.black,),
          const SizedBox(height: 5),
          Text(text.toUpperCase(), style: TextStyle(color: color ?? Colors.black),)
        ],
        )
    );
  }
}