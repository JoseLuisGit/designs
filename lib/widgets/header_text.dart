import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.symmetric(vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('This is a title', style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w600),),
          SizedBox(
            height: 5,
          ),
          Text('This is a subtitle This is a subtitle This is a subtitle ', 
              style: TextStyle(fontSize: 15, color: Colors.white), 
              maxLines: 2,
              )
        ],
      ),
    );
  }
}