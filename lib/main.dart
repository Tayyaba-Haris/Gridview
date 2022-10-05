import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final wallpaper = [
    'https://images.pexels.com/photos/1535162/pexels-photo-1535162.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1624496/pexels-photo-1624496.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/1156684/pexels-photo-1156684.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1226302/pexels-photo-1226302.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/799443/pexels-photo-799443.jpeg?auto=compress&cs=tinysrgb&w=600'
  ];

  MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid view',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        body: Container(
            margin: const EdgeInsets.all(10),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemCount: wallpaper.length,
              itemBuilder: (context, index) => ClipRRect(
                borderRadius: BorderRadius.circular(20),
                //we cam use gridtile ager ko text dalna hy to
                child: GridTile(
                  child: Image.network(
                    wallpaper[index],
                    fit: BoxFit.cover,
                  ),
                  footer: GridTileBar(
                    title: Text(' wallpaper'),
                    backgroundColor: Colors.orange.withOpacity(0.5),
                  ),
                ),
              ),
            )
            // GridView(
            //     // ignore: sort_child_properties_last
            //     children: wallpaper
            //         .map((e) => ClipRRect(
            //               borderRadius: BorderRadius.circular(20),
            //               child: Image.network(
            //                 e,
            //                 fit: BoxFit.cover,
            //               ),
            //             ))
            //         .toList(),
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //         crossAxisCount: 3,
            //         childAspectRatio: 1 / 2,
            //         crossAxisSpacing: 10,
            //         mainAxisSpacing: 10)),
            ),
      ),
    );
  }
}
