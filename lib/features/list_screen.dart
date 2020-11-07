import 'package:flutter/material.dart';

class Baby {
  String name;
  String description;

  Baby(this.name, this.description);
}

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List<Baby> listOfBabies = [
    Baby("ef", "fef"),
    Baby("ef", "fef"),
    Baby("ef", "fef"),
    Baby("ef", "fef"),
    Baby("ef", "fef"),
    Baby("ef", "fef"),
    Baby("ef", "fef"),
    Baby("ef", "fef"),
    Baby("ef", "fef"),
    Baby("ef", "fef"),
    Baby("ef", "fef"),
    Baby("ef", "fef"),
    Baby("ef", "fef"),
    Baby("ef", "fef")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buidStringList());
  }

  _buidStringList() {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: listOfBabies.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildBabyItem(listOfBabies[index]);
      },
    );
  }

  _buildBabyItem(Baby baby) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(right: 40, left: 40),
        child: Container(
            height: 200,
            width: 300,
            child: Card(
                child: Column(
              children: [Text(baby.name), Text(baby.description)],
            ))),
      ),
    );
  }
}
