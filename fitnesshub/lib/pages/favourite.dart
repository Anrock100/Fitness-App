import 'package:flutter/material.dart';

class favourite extends StatefulWidget {
  const favourite({Key? key}) : super(key: key);

  @override
  State<favourite> createState() => _favouriteState();
}

class _favouriteState extends State<favourite> {
  @override
  Widget build(BuildContext context) {
    final list1 = [
      "Gym",
      "Workout",
      "Cardio",
      "Fat Burn exercise",
      "Yoga",
      "Cycling",
      "Boxing",
      "Sauna",
      "Weight-lifting",
      "abs training"
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
        centerTitle: true,
        backgroundColor: Colors.green[600],
      ),
      body: ListView.builder(
          itemCount: list1.length,
          itemBuilder: ((context, index) {
            return ListTile(
              onTap: (() {
                print('Item pressed.');
                print(index.toString());
              }),
              title: Text(list1[index]),
              subtitle: Text(""),
              leading: CircleAvatar(
                backgroundColor: Colors.brown,
                child: Text(list1[index][0]),
              ),
              trailing: Icon(
                Icons.favorite,
                color: Colors.pink,
              ),
            );
          })),
    );
  }
}
