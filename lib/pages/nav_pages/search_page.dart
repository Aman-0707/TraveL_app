import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          margin: const EdgeInsets.all(40),
          padding: const EdgeInsets.only(left: 10,bottom: 5),
          color: Colors.purple,
          child: TextField(
            
            
            decoration: InputDecoration(
              hintText: 'search',
              icon: Icon(Icons.search,size: 40,),
             fillColor: Colors.purple[100],
             
            ),
          ),
        ),
      ),
    );
  }
}