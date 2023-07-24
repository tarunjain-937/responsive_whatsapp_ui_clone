import 'package:flutter/material.dart';

class webSearchBar extends StatelessWidget {
  const webSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.25,
      child: const TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white24,
          prefixIcon: Icon(Icons.search),
          hintStyle: TextStyle(fontSize: 18),
          hintText: "Search or start new chat",
        ),
      ),
    );
  }
}
